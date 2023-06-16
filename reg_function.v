module reg_function(
input en,
input [1:0]ra,
input [7:0] data_input,
output reg[7:0]R0,
output reg[7:0]R1,
output reg[7:0]R2,
output reg[7:0]R3
);

	always
	begin
		if(en)
		begin
			case(ra)
				2'b00:R0<=data_input;
				2'b01:R1<=data_input;
				2'b10:R2<=data_input;
				2'b11:R3<=data_input;
			endcase
		end
	end
endmodule
