module mirror_spi_driver(clk, ss, datain, frame_buff);

input clk, ss;
input datain;

//output dataout;

output [39:0][14:0]frame_buff;

reg bit, col, row;
reg [7:0]byte_builder;

always @(posedge clk)
begin
	if(~ss) //are we selected?
	begin //yes
		 //we take in a single bit at a time, group together to form byte
		 //insert byte into corresponding location in frame_buff
		 
		 
		//40 char wide loop
		for (col = 0; col < 40; col = col + 1)
		begin
			//15 char deep loop
			for (row = 0; row < 15; row = row + 1)
			begin
			
				//assign each bit in byte builder to the 
				//corresponding value of datain
				byte_builder <= 0;
				//8 bit loop
				for (bit = 0; bit < 8; bit = bit + 1)
				begin
					byte_builder[bit] = datain; 
				end
				
				frame_buff[col][row] <= byte_builder;
			end
		end
		
	end

end 
endmodule 