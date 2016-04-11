module mirror_spi_driver(master_clk, s_clk, ss, datain, ssOut);

	input master_clk, s_clk, ss;
	input datain;

	reg [7:0]frame_buffer[39:0][14:0];

	integer bit = 0, col = 0, row = 0;
	reg [7:0]byte_builder = 8'b0000000;
	
	reg byte_received;
	
	//shift s_clk
	reg [2:0]s_clkr;
	always @(posedge master_clk)
		 s_clkr <= {s_clkr[1:0], s_clk};
	wire s_clk_risingedge = (s_clkr[2:1] == 2'b01);  // detect rising edges
	
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
		if(~ss_active)
		begin
			bit <= 0;
			byte_builder[7:0] <= 8'b00000000;
		end
		else
			if(s_clk_risingedge)
			begin
				bit <= bit + 1;
				byte_builder <= {byte_builder[6:0], MOSI_data};
			end
	end
	
	// check if we received 8 bits
	always @(posedge master_clk) 
		byte_received <= ss_active && s_clk_risingedge && (bit == 7);
	
	output reg [6:0]ssOut;
	// updata frame_buffer if byte has been received
	always @(posedge master_clk)
	begin
		if(byte_received)
		begin
			frame_buffer[col][row] <= byte_builder;
			if(col < 40)
				col <= col + 1;
			else
			begin
				col <= 0;
				if(row < 15)
					row <= row + 1;
				else
					row <= 0;
			end
		end
	end

	always @*
		case (byte_builder)
			8'b00110110: ssOut = 7'b1000000; //a
			8'b00110111: ssOut = 7'b1111001; //b
			8'b00111000: ssOut = 7'b0100100; //c
			8'b00111001: ssOut = 7'b0110000; //d
			8'b00111010: ssOut = 7'b1101001; //e
			8'b00111011: ssOut = 7'b0010010; //f
			8'b00000110: ssOut = 7'b0000010;
			8'b00000111: ssOut = 7'b1111000;
			8'b00001000: ssOut = 7'b0000000;
			8'b00001001: ssOut = 7'b0011000;
			8'b00001010: ssOut = 7'b0001000;
			8'b00001011: ssOut = 7'b0000011;
			8'b00001100: ssOut = 7'b1000110;
			8'b00001101: ssOut = 7'b0100001;
			8'b00001110: ssOut = 7'b0000110;
			8'b00001111: ssOut = 7'b0001110;
		endcase	
endmodule





































	
//	always @*
//begin
//	if(byte_builder == 8'b01100001)
//		begin
//		LEDG[0] <= 1;
//		end
//	if(byte_builder == 8'b01100010)
//		begin
//		LEDG[1] <= 1;
//		end
//	if(byte_builder == 8'b01100011)
//		begin
//		LEDG[2] <= 1;
//		end
//	if(byte_builder == 8'b01100100)
//		LEDG[3] <= 1;
//	if(byte_builder == 8'b00000000)
//		LEDG <= 4'b0000;
//end
//
//	always @(posedge s_clk)
//	begin
//		if(~ss)
//		begin
//			if(bit >= 0)
//			begin
//				byte_builder[bit] <= datain;
//			end
//			else
//			begin
//				bit <= 7;
//				frame_buffer[col][row] <= byte_builder;
//				byte_builder[bit] <= datain;
//				if(col < 40)
//					col <= col + 1;
//				else
//				begin
//					col <= 0;
//					if(row < 15)
//						row <= row + 1;
//					else
//						row <= 0;
//				end
//			end
//				bit <= bit - 1;
//		end
//		else
//			bit <= 7;
//	end
