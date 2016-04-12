module mirror_spi_driver(master_clk, s_clk, ss, datain, button, button1, ssOut, LEDR, LEDG, spi_clk, byte_received, new_byte_out, new_byte_out1, clk_out, ssOut1, ssOut2);

	input master_clk, s_clk, ss;
	input datain; //button, button1;
	output spi_clk, byte_received, new_byte_out, new_byte_out1, clk_out;

	wire new_clk;
	divideClock d(master_clk, new_clk);
	
	reg [7:0]frame_buffer[39:0][14:0];

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
	parameter B = 6'b000010;
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
	always @(posedge new_clk)
		 s_clkr <= {s_clkr[1:0], s_clk};
	wire s_clk_risingedge = (s_clkr[2:1] == 2'b01);  // detect rising edges
	
	// shift ss_rise
	reg [2:0] ss_rise;  
	always @(posedge new_clk) 
		ss_rise <= {ss_rise[1:0], ss};
	wire ss_rising = (ss_rise[2:1] == 2'b01);
	wire ss_falling = (ss_rise[2:1] == 2'b10);
	
	// shift ss
	reg [2:0] ssr;  
	always @(posedge new_clk) 
		ssr <= {ssr[1:0], ss};
	wire ss_active = ~ssr[1];  // ss is active low

	// shift datain
	reg [1:0] datainr;  
	always @(posedge new_clk) 
		datainr <= {datainr[0], datain};
	wire MOSI_data = datainr[1];
	

	
	// check if slave selected and rising edge
	always @(posedge new_clk)
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
	always @(posedge new_clk)
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
					next_state = B;
				else
					next_state = A;
			end
	B:		begin
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
	
	always@(posedge new_clk)
	begin
	case(state)
	A:		begin
//				LEDG[0] <= 1;
//				LEDG[5:1] <= 0;
			end
	B:		begin
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
endmodule


module numToLetter(in, ssOut);
input [7:0] in;
output reg [6:0] ssOut;
	always@*
	begin
	case (in)
		8'b00000000: ssOut = 7'b1000000; //0
		8'b00000001: ssOut = 7'b0000110; //1
		8'b00000010: ssOut = 7'b1011011; //2
		8'b00000011: ssOut = 7'b0110000; //3
		8'b00000100: ssOut = 7'b0011001; //4
		8'b00000101: ssOut = 7'b1101101; //5
		8'b00000110: ssOut = 7'b0000011; //6
		8'b00000111: ssOut = 7'b1111000; //7
		
		8'b01100001: ssOut = 7'b0001000; //a
		8'b01100010: ssOut = 7'b0000011; //b
		8'b01100011: ssOut = 7'b1000110; //c
		8'b01100100: ssOut = 7'b0100001; //d
		8'b01100101: ssOut = 7'b0000110; //e
		8'b01100110: ssOut = 7'b0001110; //f
		8'b00110111: ssOut = 7'b0010000; //g*
		8'b01101000: ssOut = 7'b0001011; //h
		8'b01101001: ssOut = 7'b1111001; //i
		8'b01101010: ssOut = 7'b1100001; //j
		8'b01101011: ssOut = 7'b0010010; //k*
		8'b01101100: ssOut = 7'b1000111; //l
		8'b01101101: ssOut = 7'b1111000; //m*
		8'b01101110: ssOut = 7'b0101011; //n
		8'b01101111: ssOut = 7'b0100011; //o
		8'b01110000: ssOut = 7'b0001100; //p
		8'b01110001: ssOut = 7'b0000011; //q*
		8'b01110010: ssOut = 7'b0101111; //r
		8'b01110011: ssOut = 7'b0010010; //s
		8'b01110100: ssOut = 7'b0000111; //t
		8'b01110101: ssOut = 7'b1100011; //u
		8'b01110110: ssOut = 7'b1111001; //v*
		8'b01110111: ssOut = 7'b0100100; //w*
		8'b01111000: ssOut = 7'b0110000; //x*
		8'b01111001: ssOut = 7'b0010001; //y
		8'b01111010: ssOut = 7'b0010010; //z*
		
		8'b11111111: ssOut = 7'b0001110; //FF
		8'b11111110: ssOut = 7'b0000110; //FE
		default: ssOut = 7'b0000000; //all on
	endcase	
	end
endmodule

module divideClock(master_clk, new_clk);
	input master_clk;
	output new_clk;
	
	reg new_clk;
	reg [6:0] counter = 7'b0000000;

	always @(posedge master_clk)
	begin
		counter <= counter + 1;
		if(counter > 63)
		begin
			new_clk <= 1;
			if(counter == 127)
				counter <= 0;
		end
		else
			new_clk <= 0;
	end
endmodule
