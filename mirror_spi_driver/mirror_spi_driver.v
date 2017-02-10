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
			8'b01101111: ssOut = 7'b01000011; //o
			8'b01110000: ssOut = 7'b0001100; //p
			8'b01110001: ssOut = 7'b0000011; //q*
			8'b01110010: ssOut = 7'b0101111; //r <-
			8'b01110011: ssOut = 7'b0100001; //s
			8'b01110100: ssOut = 7'b0000110; //t
			8'b01110101: ssOut = 7'b1000000; //u
			8'b01110110: ssOut = 7'b1111001; //v
			8'b01110111: ssOut = 7'b0100100; //w
			8'b01111000: ssOut = 7'b0110000; //x
			8'b01111001: ssOut = 7'b1101001; //y
			8'b01111010: ssOut = 7'b0010010; //z
		endcase	
endmodule

