module Letters(VGA_clk, ascii_val, xStart, yStart, xPixel, yPixel, scaling, mask);
	input VGA_clk;
	input [7:0] ascii_val;
	input [9:0] xStart, yStart, xPixel, yPixel;
	input [1:0] scaling;
	
	output reg mask;
	
	parameter M = 77;
	
	reg [9:0] i;
	
	always @ * begin
		case (ascii_val)
			M: begin
				mask <= ((xPixel == xStart) && (yPixel >= yStart) && (yPixel <= yStart+20)) || 
								((xPixel == xStart+21) && (yPixel >= yStart) && (yPixel <= yStart+20)) ||
								((xPixel == xStart+1) && (yPixel == yStart+1)) || 
								((xPixel == xStart+2) && (yPixel == yStart+2)) || 
								((xPixel == xStart+3) && (yPixel == yStart+3)) || 
								((xPixel == xStart+4) && (yPixel == yStart+4)) || 
								((xPixel == xStart+5) && (yPixel == yStart+5)) || 
								((xPixel == xStart+6) && (yPixel == yStart+6)) || 
								((xPixel == xStart+7) && (yPixel == yStart+7)) || 
								((xPixel == xStart+8) && (yPixel == yStart+8)) || 
								((xPixel == xStart+9) && (yPixel == yStart+9)) || 
								((xPixel == xStart+10) && (yPixel == yStart+10)) || 
								((xPixel == xStart+11) && (yPixel == yStart+10)) || 
								((xPixel == xStart+12) && (yPixel == yStart+9)) || 
								((xPixel == xStart+13) && (yPixel == yStart+8)) || 
								((xPixel == xStart+14) && (yPixel == yStart+7)) ||  
								((xPixel == xStart+15) && (yPixel == yStart+6)) ||  
								((xPixel == xStart+16) && (yPixel == yStart+5)) || 
								((xPixel == xStart+17) && (yPixel == yStart+4)) ||  
								((xPixel == xStart+18) && (yPixel == yStart+3)) ||  
								((xPixel == xStart+19) && (yPixel == yStart+2)) || 
								((xPixel == xStart+20) && (yPixel == yStart+1));
//								((xPixel == xStart+21) && (yPixel == yStart+20)) || 
//								((xPixel == xStart+22) && (yPixel == yStart+19)) || 
//								((xPixel == xStart+23) && (yPixel == yStart+18)) || 
//								((xPixel == xStart+24) && (yPixel == yStart+17)) || 
//								((xPixel == xStart+25) && (yPixel == yStart+16)) || 
//								((xPixel == xStart+26) && (yPixel == yStart+15)) || 
//								((xPixel == xStart+27) && (yPixel == yStart+14)) || 
//								((xPixel == xStart+28) && (yPixel == yStart+13)) || 
//								((xPixel == xStart+29) && (yPixel == yStart+12)) || 
//								((xPixel == xStart+30) && (yPixel == yStart+11)) || 
//								((xPixel == xStart+31) && (yPixel == yStart+10)) || 
//								((xPixel == xStart+32) && (yPixel == yStart+9)) || 
//								((xPixel == xStart+33) && (yPixel == yStart+8)) || 
//								((xPixel == xStart+34) && (yPixel == yStart+7)) ||  
//								((xPixel == xStart+35) && (yPixel == yStart+6)) ||  
//								((xPixel == xStart+36) && (yPixel == yStart+5)) || 
//								((xPixel == xStart+37) && (yPixel == yStart+4)) ||  
//								((xPixel == xStart+38) && (yPixel == yStart+3)) ||  
//								((xPixel == xStart+39) && (yPixel == yStart+2)) || 
//								((xPixel == xStart+40) && (yPixel == yStart+1));
			end
	
	
	
	
		endcase
	
	end 

endmodule