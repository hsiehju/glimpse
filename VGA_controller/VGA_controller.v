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
	
	wire [7:0]frame_buffer[39:0][14:0];
	
	//78F
	assign frame_buffer[7][4]= 108;
	assign frame_buffer[8][4]= 109;
	assign frame_buffer[7][5]= 110;
	assign frame_buffer[8][5]= 111;
	assign frame_buffer[9][4]= 112;
	assign frame_buffer[10][4]= 113;
	assign frame_buffer[9][5]= 114;
	assign frame_buffer[10][5]= 115;
	
	//12:00
	assign frame_buffer[28][1]= 84;
	assign frame_buffer[29][1]= 85;
	assign frame_buffer[28][2]= 86;
	assign frame_buffer[29][2]= 87;
	assign frame_buffer[30][1]= 88;
	assign frame_buffer[31][1]= 89;
	assign frame_buffer[30][2]= 90;
	assign frame_buffer[31][2]= 91;
	assign frame_buffer[34][1]= 80;
	assign frame_buffer[35][1]= 81;
	assign frame_buffer[34][2]= 82;
	assign frame_buffer[35][2]= 83;
	assign frame_buffer[36][1]= 80;
	assign frame_buffer[37][1]= 81;
	assign frame_buffer[36][2]= 82;
	assign frame_buffer[37][2]= 83;
	
	//28 16
	assign frame_buffer[28][4]= 88;
	assign frame_buffer[29][4]= 89;
	assign frame_buffer[28][5]= 90;
	assign frame_buffer[29][5]= 91;
	assign frame_buffer[30][4]= 112;
	assign frame_buffer[31][4]= 113;
	assign frame_buffer[30][5]= 114;
	assign frame_buffer[31][5]= 115;
	assign frame_buffer[34][4]= 84;
	assign frame_buffer[35][4]= 85;
	assign frame_buffer[34][5]= 86;
	assign frame_buffer[35][5]= 87;
	assign frame_buffer[36][4]= 104;
	assign frame_buffer[37][4]= 105;
	assign frame_buffer[36][5]= 106;
	assign frame_buffer[37][5]= 107;
	
	//"Quote of the day:
	assign frame_buffer[7][9]= 38;
	assign frame_buffer[8][9]= 74;
	assign frame_buffer[9][9]= 68;
	assign frame_buffer[10][9]= 73;
	assign frame_buffer[11][9]= 58;
	
	assign frame_buffer[13][9]= 68;
	assign frame_buffer[14][9]= 102-43;
	
	assign frame_buffer[16][9]= 116-43;
	assign frame_buffer[17][9]= 104-43;
	assign frame_buffer[18][9]= 101-43;
	
	assign frame_buffer[20][9]= 100-43;
	assign frame_buffer[21][9]= 97-43;
	assign frame_buffer[22][9]= 121-43;
	assign frame_buffer[23][9]= 58-43;
	
	//Fuck yeah baby.
	assign frame_buffer[8][11]= 70-43;
	assign frame_buffer[9][11]= 117-43;
	assign frame_buffer[10][11]= 99-43;
	assign frame_buffer[11][11]= 107-43;
	
	assign frame_buffer[13][11]= 121-43;
	assign frame_buffer[14][11]= 101-43;
	assign frame_buffer[15][11]= 97-43;
	assign frame_buffer[16][11]= 104-43;
	
	assign frame_buffer[18][11]= 98-43;
	assign frame_buffer[19][11]= 97-43;
	assign frame_buffer[20][11]= 98-43;
	assign frame_buffer[21][11]= 121-43;
	assign frame_buffer[22][11]= 46-43;
	
	assign DAC_clk = VGA_clk;
	
	clk_divider divider1(master_clk, VGA_clk);
	generate_VGA vga1(VGA_clk, xPixel, yPixel, display_area, VGA_hSync, VGA_vSync, blank_n);
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
