module mirror_spi_driver(clk, ss, datain, dataout);

input clk, ss;
input datain;

output dataout;

wire [40][15]frame_buff;

reg bit, col, row;

always @(posedge clk)
begin
	if(~ss) //are we selected?
	begin //yes
		 //we take in a single bit at a time, group together to form byte
		 //insert byte into corresponding location in frame_buff
		 //8 bit loop
		 for (bit = 0; bit < 8; bit = bit + 1)
		 begin
			
		 end
		 //40 char wide loop
		 for (col = 0; col < 49; col = col + 1)
		 begin
			 for (row = 0; row < 14; row = row + 1)
				begin
					
		 
				end
		 end
		 //15 char deep loop
	end

end 
endmodule 