module Letters(VGA_clk, ascii_val, xStart, yStart, xPixel, yPixel, scaling, mask);
	input VGA_clk;
	input [7:0] ascii_val;
	input [9:0] xStart, yStart, xPixel, yPixel;
	input [1:0] scaling;
	
	output reg mask;
	
	parameter A = 65;
	parameter B = 66;
	parameter C = 67;
	parameter M = 77;
	
	always @ * begin
		case (ascii_val)
			A: begin
				mask <=	((xPixel == xStart) && (yPixel == yStart)) ||
							((xPixel == xStart) && (yPixel == yStart - 1)) ||
							((xPixel == xStart + 1) && (yPixel == yStart - 2)) ||
							((xPixel == xStart + 1) && (yPixel == yStart - 3)) ||
							((xPixel == xStart + 2) && (yPixel == yStart - 4)) ||
							((xPixel == xStart + 2) && (yPixel == yStart - 5)) ||
							((xPixel == xStart + 3) && (yPixel == yStart - 6)) ||
							((xPixel == xStart + 3) && (yPixel == yStart - 7)) ||
							((xPixel == xStart + 4) && (yPixel == yStart - 8)) ||
							((xPixel == xStart + 4) && (yPixel == yStart - 9)) ||
							((xPixel == xStart + 5) && (yPixel == yStart - 10)) ||
							((xPixel == xStart + 5) && (yPixel == yStart - 11)) ||
							((xPixel == xStart + 6) && (yPixel == yStart - 12)) ||
							((xPixel == xStart + 6) && (yPixel == yStart - 13)) ||
							((xPixel == xStart + 7) && (yPixel == yStart - 14)) ||
							((xPixel == xStart + 7) && (yPixel == yStart - 15)) ||
							((xPixel == xStart + 8) && (yPixel == yStart - 16)) ||
							((xPixel == xStart + 8) && (yPixel == yStart - 17)) ||
							((xPixel == xStart + 9) && (yPixel == yStart - 18)) ||
							((xPixel == xStart + 9) && (yPixel == yStart - 19)) ||
							((xPixel == xStart + 10) && (yPixel == yStart - 20)) ||
							((xPixel == xStart + 10) && (yPixel == yStart - 20)) ||
							((xPixel == xStart + 11) && (yPixel == yStart - 19)) ||
							((xPixel == xStart + 11) && (yPixel == yStart - 18)) ||
							((xPixel == xStart + 12) && (yPixel == yStart - 17)) ||
							((xPixel == xStart + 12) && (yPixel == yStart - 16)) ||
							((xPixel == xStart + 13) && (yPixel == yStart - 15)) ||
							((xPixel == xStart + 13) && (yPixel == yStart - 14)) ||
							((xPixel == xStart + 14) && (yPixel == yStart - 13)) ||
							((xPixel == xStart + 14) && (yPixel == yStart - 12)) ||
							((xPixel == xStart + 15) && (yPixel == yStart - 11)) ||
							((xPixel == xStart + 15) && (yPixel == yStart - 10)) ||
							((xPixel == xStart + 16) && (yPixel == yStart - 9)) ||
							((xPixel == xStart + 16) && (yPixel == yStart - 8)) ||
							((xPixel == xStart + 17) && (yPixel == yStart - 7)) ||
							((xPixel == xStart + 17) && (yPixel == yStart - 6)) ||
							((xPixel == xStart + 18) && (yPixel == yStart - 5)) ||
							((xPixel == xStart + 18) && (yPixel == yStart - 4)) ||
							((xPixel == xStart + 19) && (yPixel == yStart - 3)) ||
							((xPixel == xStart + 19) && (yPixel == yStart - 2)) ||
							((xPixel == xStart + 20) && (yPixel == yStart - 1)) ||
							((xPixel == xStart + 20) && (yPixel == yStart)) ||
							((xPixel >= xStart + 5) && (xPixel <= xStart + 15) && (yPixel == yStart - 10));
			end
			
			B: begin
				mask <=	((xPixel == xStart) && (yPixel <= yStart) && (yPixel >= yStart - 20)) ||
							((xPixel >= xStart) && (xPixel <= xStart + 12) && (yPixel == yStart - 20)) ||
							((xPixel >= xStart) && (xPixel <= xStart + 16) && (yPixel == yStart)) ||
							((xPixel >= xStart + 12) && (xPixel <= xStart + 14) && (yPixel == yStart - 19)) ||
							((xPixel >= xStart + 14) && (xPixel <= xStart + 16) && (yPixel == yStart - 18)) ||
							((xPixel == xStart + 16) && (yPixel == yStart - 17)) ||
							((xPixel == xStart + 16) && (yPixel >= yStart - 17) && (yPixel <= yStart - 13)) ||
							((xPixel == xStart + 15) && (yPixel == yStart - 13)) ||
							((xPixel >= xStart + 13) && (xPixel <= xStart + 15) && (yPixel == yStart - 12)) ||
							((xPixel >= xStart + 8) && (xPixel <= xStart + 13) && (yPixel == yStart - 11)) ||
							((xPixel >= xStart + 13) && (xPixel <= xStart + 15) && (yPixel == yStart - 10)) ||
							((xPixel >= xStart + 15) && (xPixel <= xStart + 17) && (yPixel == yStart - 9)) ||
							((xPixel >= xStart + 17) && (xPixel <= xStart + 18) && (yPixel == yStart - 8)) ||
							((xPixel == xStart + 18) && (yPixel == yStart - 7)) ||
							((xPixel == xStart + 19) && (yPixel >= yStart - 7) && (yPixel <= yStart - 2)) ||
							((xPixel == xStart + 18) && (yPixel == yStart - 2)) ||
							((xPixel >= xStart + 16) && (xPixel <= xStart + 18) && (yPixel == yStart - 1));
			end
			
			/*C: begin
				mask <=  ((yPixel == yStart) && (xPixel >= xStart + 6) && (xPixel <= xStart + 14)) ||
							((yPixel == yStart - 1) && (xPixel >= xStart + 4) && (xPixel <=
			end*/
			
			M: begin
				mask <= 	((xPixel == xStart) && (yPixel <= yStart) && (yPixel >= yStart-20)) || 
							((xPixel == xStart+20) && (yPixel <= yStart) && (yPixel >= yStart-20)) ||
							((xPixel == xStart+1) && (yPixel == yStart-19)) || 
							((xPixel == xStart+2) && (yPixel == yStart-18)) || 
							((xPixel == xStart+3) && (yPixel == yStart-17)) || 
							((xPixel == xStart+4) && (yPixel == yStart-16)) || 
							((xPixel == xStart+5) && (yPixel == yStart-15)) || 
							((xPixel == xStart+6) && (yPixel == yStart-14)) || 
							((xPixel == xStart+7) && (yPixel == yStart-13)) || 
							((xPixel == xStart+8) && (yPixel == yStart-12)) || 
							((xPixel == xStart+9) && (yPixel == yStart-11)) || 
							((xPixel == xStart+10) && (yPixel == yStart-10)) || 
							((xPixel == xStart+11) && (yPixel == yStart-11)) || 
							((xPixel == xStart+12) && (yPixel == yStart-12)) || 
							((xPixel == xStart+13) && (yPixel == yStart-13)) || 
							((xPixel == xStart+14) && (yPixel == yStart-14)) ||  
							((xPixel == xStart+15) && (yPixel == yStart-15)) ||  
							((xPixel == xStart+16) && (yPixel == yStart-16)) || 
							((xPixel == xStart+17) && (yPixel == yStart-17)) ||  
							((xPixel == xStart+18) && (yPixel == yStart-18)) ||  
							((xPixel == xStart+19) && (yPixel == yStart-19));
			end
	
	
	
	
		endcase
	
	end 

endmodule