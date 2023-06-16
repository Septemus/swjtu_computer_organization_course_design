module choose_rx_ry(clk,IR,R0,R1,R2,R3,RX,RY);
	input clk;
	input [15:0] IR;
	inout reg[7:0]R0,R1,R2,R3,RX,RY;
	always@(posedge clk)
	begin
		case(IR[11:10])
			2'b00:begin
				RX<=R0;
				R0<=RX;
			end
			2'b01:begin
				RX<=R1;
				R1<=RX;
			end
			2'b10:begin
				RX<=R2;
				R2<=RX;
			end
			2'b11:begin
				RX<=R3;
				R3<=RX;
			end
		endcase
		case(IR[9:8])
			2'b00:begin
				RY<=R0;
				R0<=RY;
			end
			2'b01:begin
				RY<=R1;
				R1<=RY;
			end
			2'b10:begin
				RY<=R2;
				R2<=RY;
			end
			2'b11:begin
				RY<=R3;
				R3<=RY;
			end
		endcase
	end
endmodule
