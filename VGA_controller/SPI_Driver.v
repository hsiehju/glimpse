//module mirror_spi_driver(clk, ss, datain, frame_buff);
//input clk, ss;
//input datain;
//
////output dataout;
//
//output reg frame_buff[39:0][14:0];
//
//integer bit = 7, col = 0, row = 0;
//reg [7:0]byte_builder = 8'b0000000;
//
////output reg [3:0]LEDG = 4'b0000;
//
//always @(posedge clk)
//begin
//if(~ss)
//begin
//	if(bit > -1)
//		begin
//		byte_builder[bit] = datain;
//		bit <= bit - 1;
//		end
//	else
//		begin
//		bit = 8;
//		frame_buff[col][row] <= byte_builder;
//		byte_builder = 8'b00000000;
//		if(col < 40)
//			col <= col + 1;
//		else
//			begin
//			col <= 0;
//			if(row < 15)
//				row <= row + 1;
//			else
//				row <= 0;
//			end
//		
//		end
//end	
//end
//
////always @*
////begin
////	if(byte_builder == 8'b1100001)
////		begin
////		LEDG[0] <= 1;
////		end
////	else if(byte_builder == 8'b1100010)
////		begin
////		LEDG[1] <= 1;
////		end
////	else if(byte_builder == 8'b1100011)
////		begin
////		LEDG[2] <= 1;
////		end
////	else if(byte_builder == 8'b1100100)
////		LEDG[3] <= 1;
////	else if(byte_builder == 8'b00000001)
////		LEDG <= 4'b0000;
////end 
//endmodule
////
////input clk, ss;
////input datain;
////
//////output dataout;
////
////output [39:0][14:0]frame_buff;
////
////reg bit, col, row;
////reg [7:0]byte_builder;
////
////always @(posedge clk)
////begin
////	if(~ss) //are we selected?
////	begin //yes
////		 //we take in a single bit at a time, group together to form byte
////		 //insert byte into corresponding location in frame_buff
////		 
////		 
////		//40 char wide loop
////		for (col = 0; col < 40; col = col + 1)
////		begin
////			//15 char deep loop
////			for (row = 0; row < 15; row = row + 1)
////			begin
////			
////				//assign each bit in byte builder to the 
////				//corresponding value of datain
////				byte_builder <= 0;
////				//8 bit loop
////				for (bit = 0; bit < 8; bit = bit + 1)
////				begin
////					byte_builder[bit] = datain; 
////				end
////				
////				frame_buff[col][row] <= byte_builder;
////			end
////		end
////		
////	end
////
////end 
////endmodule 