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
	
	//PLAY
	assign frame_buffer[29][10]= 232;
	assign frame_buffer[30][10]= 233;
	assign frame_buffer[31][10]= 234;
	assign frame_buffer[29][11]= 235;
	assign frame_buffer[30][11]= 236;
	assign frame_buffer[31][11]= 237;
	
	//BACK
	assign frame_buffer[26][10]= 238;
	assign frame_buffer[27][10]= 239;
	assign frame_buffer[28][10]= 240;
	assign frame_buffer[26][11]= 241;
	assign frame_buffer[27][11]= 242;
	assign frame_buffer[28][11]= 243;
	
	//FORWARD
	assign frame_buffer[35][10]= 244;
	assign frame_buffer[36][10]= 245;
	assign frame_buffer[37][10]= 246;
	assign frame_buffer[35][11]= 247;
	assign frame_buffer[36][11]= 248;
	assign frame_buffer[37][11]= 249;
	
	//PAUSE
	assign frame_buffer[32][10]= 250;
	assign frame_buffer[33][10]= 251;
	assign frame_buffer[34][10]= 252;
	assign frame_buffer[32][11]= 253;
	assign frame_buffer[33][11]= 254;
	assign frame_buffer[34][11]= 255;
	
	//SUNNY
	assign frame_buffer[2][3]= 196;
	assign frame_buffer[3][3]= 197;
	assign frame_buffer[4][3]= 198;
	assign frame_buffer[5][3]= 199;
	assign frame_buffer[6][3]= 200;
	assign frame_buffer[7][3]= 201;

	assign frame_buffer[2][4]= 202;
	assign frame_buffer[3][4]= 203;
	assign frame_buffer[4][4]= 204;
	assign frame_buffer[5][4]= 205;
	assign frame_buffer[6][4]= 206;
	assign frame_buffer[7][4]= 207;

	assign frame_buffer[2][5]= 208;
	assign frame_buffer[3][5]= 209;
	assign frame_buffer[4][5]= 210;
	assign frame_buffer[5][5]= 211;
	assign frame_buffer[6][5]= 212;
	assign frame_buffer[7][5]= 213;	
	
	//78F
	assign frame_buffer[9][4]= 108;
	assign frame_buffer[10][4]= 109;
	assign frame_buffer[9][5]= 110;
	assign frame_buffer[10][5]= 111;
	assign frame_buffer[11][4]= 112;
	assign frame_buffer[12][4]= 113;
	assign frame_buffer[11][5]= 114;
	assign frame_buffer[12][5]= 115;
	assign frame_buffer[13][4]= 70-43;
	
	//12:00
	assign frame_buffer[26][1]= 84;
	assign frame_buffer[27][1]= 85;
	assign frame_buffer[26][2]= 86;
	assign frame_buffer[27][2]= 87;
	assign frame_buffer[28][1]= 88;
	assign frame_buffer[29][1]= 89;
	assign frame_buffer[28][2]= 90;
	assign frame_buffer[29][2]= 91;
	assign frame_buffer[30][1]= 120;
	assign frame_buffer[31][1]= 121;
	assign frame_buffer[30][2]= 122;
	assign frame_buffer[31][2]= 123;
	assign frame_buffer[32][1]= 80;
	assign frame_buffer[33][1]= 81;
	assign frame_buffer[32][2]= 82;
	assign frame_buffer[33][2]= 83;
	assign frame_buffer[34][1]= 80;
	assign frame_buffer[35][1]= 81;
	assign frame_buffer[34][2]= 82;
	assign frame_buffer[35][2]= 83;
	assign frame_buffer[36][1]= 52-43;
	assign frame_buffer[37][1]= 57-43;
	
	//FEB 28 16
	assign frame_buffer[29][3]= 70-43;
	assign frame_buffer[30][3]= 101-43;
	assign frame_buffer[31][3]= 98-43;
	
	assign frame_buffer[33][3]= 50-43;
	assign frame_buffer[34][3]= 56-43;
	assign frame_buffer[35][3]= 44-43;
	
	assign frame_buffer[36][3]= 49-43;
	assign frame_buffer[37][3]= 54-43;
	
	
//	assign frame_buffer[34][4]= 84;
//	assign frame_buffer[35][4]= 85;
//	assign frame_buffer[34][5]= 86;
//	assign frame_buffer[35][5]= 87;
//	assign frame_buffer[36][4]= 104;
//	assign frame_buffer[37][4]= 105;
//	assign frame_buffer[36][5]= 106;
//	assign frame_buffer[37][5]= 107;
	
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
	
	//Fuck yeah baby.--
	assign frame_buffer[7][11]= 51;
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
	assign frame_buffer[22][11]= 52;
	assign frame_buffer[23][11]=51;
	
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
