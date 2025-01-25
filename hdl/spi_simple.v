module spi(
	input logic miso,
    output logic sclk,
    output logic mosi,
    output logic cs_out,
    input logic clock_in,
    input logic rs
	 
);

reg[7:0] read_data;
reg[3:0] state_mosi;
reg[3:0] state_miso;
logic[7:0] send_data = 8'b11010101;
reg spi_clk;
reg mosi_out;

localparam STATE_IDLE = 0;
localparam STATE_START = 1;
localparam STATE_WRITE = 2;
localparam STATE_READ = 3;
localparam STATE_STOP = 4;


reg cs;

assign cs_out = cs;
assign sclk = spi_clk;
assign mosi = mosi_out;

reg[7:0] counter_miso;
reg[7:0] counter_mosi;

initial begin
	spi_clk = 1;
end

always @ (posedge clock_in) begin
    if (rs==1) begin
        spi_clk=0;
    end
    else begin
        spi_clk=~spi_clk;
    end
end 

initial begin
	state_mosi = STATE_IDLE;
	state_miso = STATE_IDLE;
	cs = 0;

end

always @(posedge spi_clk) begin

		case(state_miso)
			STATE_IDLE : begin
				if (cs == 0) begin
					state_miso = STATE_START;
				end
				else state_miso = STATE_IDLE;
			end
			STATE_START : begin 
				counter_miso = 7;
				state_miso = STATE_READ;
			end
			STATE_READ: begin
				read_data[counter_miso] = miso;
				counter_miso = counter_miso -1;
				if (counter_miso == 0) begin
					state_miso = STATE_STOP;
				end
			end
			STATE_STOP: begin
				state_miso = STATE_IDLE;
			end
		endcase
end


always @(negedge spi_clk) begin

		case(state_mosi)
			STATE_IDLE : begin
				if (cs == 0) begin
					state_mosi = STATE_START;
				end
				else state_mosi = STATE_IDLE;
			end
			STATE_START : begin
				counter_mosi = 7;
				state_mosi = STATE_WRITE;
			end
			STATE_WRITE: begin
				mosi_out = send_data[counter_mosi];
				if (counter_mosi == 0) begin
					state_mosi = STATE_STOP;
				end
				counter_mosi = counter_mosi -1;
			end
			STATE_STOP: begin
				state_mosi = STATE_IDLE;
			end
		endcase
end

endmodule