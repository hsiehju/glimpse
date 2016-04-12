module VGA_controller(s_clk, ss, datain, power, master_clk, data, DAC_clk, VGA_R, VGA_G, VGA_B, VGA_hSync, VGA_vSync, blank_n);

	input master_clk, data, power, s_clk, ss, datain;
	output reg [7:0] VGA_R, VGA_G, VGA_B;
	
	output VGA_hSync, VGA_vSync, blank_n, DAC_clk;
	
	wire [9:0] xPixel;
	wire [9:0] yPixel;
	
	wire display_area;
	wire VGA_clk;
	
	wire R;
	wire G;
	wire B;
	
	wire pixelOutput;
	
	reg [7:0]frame_buffer[39:0][14:0];
	
	assign DAC_clk = VGA_clk;
	
	clk_divider divider1(master_clk, VGA_clk);
	generate_VGA vga1(VGA_clk, xPixel, yPixel, display_area, VGA_hSync, VGA_vSync, blank_n);
	reg [7:0]col = 8'b0000000;
	reg [7:0]row = 8'b0000000;
	reg [7:0]byte_builder = 8'b0000000;
	
	reg [7:0]new_byte = 8'b00000000;
	reg [7:0]char_to_add = 8'b00000000;
	
	reg byte_received;
	
	reg [5:0]state = 6'b000100;
	reg [5:0]next_state;
	
//	output  [7:0] LEDR;
//	output reg [7:0] LEDG = 8'b00000000;
	parameter A = 6'b000001;
	parameter M = 6'b000010;
	parameter C = 6'b000100;
	parameter D = 6'b001000;
	parameter E = 6'b010000;
	parameter F = 6'b100000;
	
//	output [6:0]ssOut;
//	output [6:0]ssOut1;
//	output [6:0]ssOut2;
//	assign spi_clk = s_clk;
//	assign new_byte_out = new_byte[0];
//	assign new_byte_out1 = new_byte[1];
//	assign clk_out = new_clk;
	//shift s_clk
	reg [2:0]s_clkr;
	always @(posedge master_clk)
		 s_clkr <= {s_clkr[1:0], s_clk};
	wire s_clk_risingedge = (s_clkr[2:1] == 2'b01);  // detect rising edges
	
	// shift ss_rise
	reg [2:0] ss_rise;  
	always @(posedge master_clk) 
		ss_rise <= {ss_rise[1:0], ss};
	wire ss_rising = (ss_rise[2:1] == 2'b01);
	wire ss_falling = (ss_rise[2:1] == 2'b10);
	
	// shift ss
	reg [2:0] ssr;  
	always @(posedge master_clk) 
		ssr <= {ssr[1:0], ss};
	wire ss_active = ~ssr[1];  // ss is active low

	// shift datain
	reg [1:0] datainr;  
	always @(posedge master_clk) 
		datainr <= {datainr[0], datain};
	wire MOSI_data = datainr[1];
	

	
	// check if slave selected and rising edge
	always @(posedge master_clk)
	begin
		if(byte_received)
			byte_received <= 0;
		if(~ss_active)
		begin
			if(ss_falling)
			begin
				byte_builder[7:0] <= 8'b00000000;
			end
		end
		else
			if(s_clk_risingedge)
			begin
				byte_builder <= {byte_builder[6:0], MOSI_data};
			end
		if(ss_rising)
			byte_received<=1;
	end

	// update frame_buffer if byte has been received
	always @(posedge master_clk)
	begin
		if(byte_received)
		begin
//			LEDG[6] <= ~LEDG[6];
			new_byte <= byte_builder;
			state <= next_state;
		end
	end
	
//	assign LEDR[7:0] = new_byte[7:0];
//	numToLetter n1(char_to_add, ssOut);
//	numToLetter n2(byte_builder, ssOut2);
//	numToLetter n3(new_byte, ssOut1);
	
	always@*
	begin
	case(state)
	A:		begin
				if(new_byte == 8'b11111111) //look for beginning character
					next_state = M;
				else
					next_state = A;
			end
	M:		begin
				if(new_byte < 8'b00101000) //less than 40
						next_state = C;
				else
						next_state = A;
			end
	C:		begin
				if(new_byte < 8'b00001111) //less than 15
					next_state = D;
				else
					next_state = A;
			end
	D:		begin
				next_state = E;
			end
	E:		begin
				next_state = A;
			end
	default:	next_state = A;
	endcase
	end
	
	always@(posedge master_clk)
	begin
	case(state)
	A:		begin
//				LEDG[0] <= 1;
//				LEDG[5:1] <= 0;
			end
	M:		begin
//				LEDG[0] <= 0;
//				LEDG[1] <= 1;
				col <= new_byte;
			end
	C:		begin
//				LEDG[1] <= 0;
//				LEDG[2] <= 1;
				row <= new_byte;
			end
	D:		begin
//				LEDG[2] <= 0;
//				LEDG[3] <= 1;
				char_to_add <= new_byte; //grab character
			end
	E:		begin
//				LEDG[3] <= 0;
//				LEDG[4] <= 1;
				if(new_byte == 8'b11111110)
					frame_buffer[col][row] <= char_to_add;
			end
	endcase
	end

	Font_library library1(VGA_clk, frame_buffer[xPixel[9:4]][yPixel[9:5]], xPixel, yPixel, pixelOutput);

	assign R = (display_area && pixelOutput);
	assign G = (display_area && pixelOutput);
	assign B = (display_area && pixelOutput);
	
	always@(posedge VGA_clk)
	begin
		VGA_R = {8{R}};
		VGA_G = {8{G}};
		VGA_B = {8{B}};
	end 
	
endmodule

////////////////////////////////////////////////////////////////////
///////////////////////////CLOCK DIVIDER////////////////////////////
////////////////////////////////////////////////////////////////////

module clk_divider(master_clk, VGA_clk);

	input master_clk; //50MHz clock
	output reg VGA_clk; //25MHz clock
	reg q;

	always@(posedge master_clk)
	begin
		q <= ~q; 
		VGA_clk <= q;
	end
endmodule

////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////
///////////////////////////GENERATE VGA/////////////////////////////
////////////////////////////////////////////////////////////////////


module generate_VGA(VGA_clk, xPixel, yPixel, display_area, VGA_hSync, VGA_vSync, blank_n);

	input VGA_clk;
	output reg [9:0]xPixel, yPixel;
	output reg display_area;  
	output VGA_hSync, VGA_vSync, blank_n;

	reg ph_sync, pv_sync; 
	
	integer hf_porch = 640; //start of horizntal front porch
	integer h_sync = 655;//start of horizontal sync
	integer hb_porch = 747; //start of horizontal back porch
	integer h_max = 793; //total length of line.

	integer vf_porch = 480; //start of vertical front porch 
	integer v_sync = 490; //start of vertical sync
	integer vb_porch = 492; //start of vertical back porch
	integer v_max = 525; //total rows. 

	always @(posedge VGA_clk)
	begin
		if(xPixel === h_max)
			xPixel <= 0;
		else
			xPixel <= xPixel + 1;
	end
	
	always @(posedge VGA_clk)
	begin
		if(xPixel === h_max)
		begin
			if(yPixel === v_max)
				yPixel <= 0;
			else
				yPixel <= yPixel + 1;
		end
	end
	
	always @(posedge VGA_clk)
	begin
		display_area <= ((xPixel < hf_porch) && (yPixel < vf_porch));
	end
	
	always @(posedge VGA_clk)
	begin
		ph_sync <= ((xPixel >= h_sync) && (xPixel < hb_porch));
		pv_sync <= ((yPixel >= v_sync) && (yPixel < vb_porch));
	end
	
	assign VGA_vSync = ~pv_sync; 
	assign VGA_hSync = ~ph_sync;
	assign blank_n = display_area;
	
endmodule
