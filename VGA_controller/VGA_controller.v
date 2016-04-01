module VGA_controller(power, master_clk, data, DAC_clk, VGA_R, VGA_G, VGA_B, VGA_hSync, VGA_vSync, blank_n);

	input master_clk, data, power;
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
	
	reg frame_buffer[39:0][14:0];
	assign DAC_clk = VGA_clk;
	
	clk_divider divider1(master_clk, VGA_clk);
	generate_VGA vga1(VGA_clk, xPixel, yPixel, display_area, VGA_hSync, VGA_vSync, blank_n);
	Font_library library1(VGA_clk, 7'b0101100, xPixel, yPixel, pixelOutput);

	assign R = (display_area && pixelOutput);
	assign G = (display_area && pixelOutput);
	assign B = 0;//(display_area && pixelOutput);
	
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
