module status_machine(M_data_in,clk,reset,Write_read,M_addr,M_data_out);

parameter Idle =4'b0000;
parameter Load =4'b0001;
parameter Move =4'b0010;
parameter Add  =4'b0011;
parameter Sub  =4'b0100;
parameter And  =4'b0101;
parameter Or   =4'b0110;
parameter Xor  =4'b0111;
parameter Shr  =4'b1000;
parameter Shl  =4'b1001;
parameter Swap =4'b1010;
parameter Jmp  =4'b1011;
parameter Jz   =4'b1100;
parameter Read =4'b1101;
parameter Write=4'b1110;
parameter Stop =4'b1111;
parameter st_0 = 3'b000;
parameter st_1 = 3'b001;
parameter st_2 = 3'b010;
parameter st_3 = 3'b011;
parameter st_4 = 3'b100;
input clk,reset;
input [7:0] M_data_in;
reg [7:0] R0,R1,R2,R3,RX,RY;
reg [7:0]PC,A;
//reg [7:0] MDR;
reg [15:0] IR;
//reg[11:0] MAR;
output reg Write_read;
output reg[11:0]M_addr;
output reg[7:0]M_data_out;
reg [2:0] state;
wire [3:0]OP;
assign OP=IR[15:12];
always@(clk or reset)
	begin
		if(!reset)
		begin
			R0<=0;
			R1<=0;
			R2<=0;
			R3<=0;
			RX<=0;
			RY<=0;
			PC<=0;
			M_addr<=0;
			M_data_out<=0;
			A<=0;
		end
		
		else 
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
		case(state)
		
			st_0:
			begin
				if(clk)
				begin
					IR<={M_data_in,8'h00};
					Write_read<=0;
					PC<=PC+1;
				end
				else 
				begin
					A<=RY;
					M_addr<=PC;
					state<=st_1;
				end
			end
			st_1:
			
			begin

				if(clk)
				begin
					Write_read<=0;
					case(OP)
						Load: R0<={4'h0,IR[11:8]};
						Move: RX<=A;
						Shr:	RX<={1'b0,RX[7:1]};
						Shl:  RX<={RX[6:0],1'b0};
						Add:	RX<=RX+A;
						Sub:	RX<=RX-A;
						And:	RX<=RX&A;
						Or:	RX<=RX|A;
						Xor:	RX<=RX^A;
						Swap:	RY<=RX;
					endcase
				end
				else 
				begin
					if(OP==Stop)
					begin
						state<=st_1;
					end
					else if(OP==Swap||OP==Jmp||OP==Jz||OP==Read||OP==Write)
					begin
						state<=st_2;
					end
					else begin
						state<=st_0;
					end
				end
				
			end
			
			
			
			
			st_2:
			begin
				if(clk)
				begin
					Write_read<=0;
					case(OP)
						Swap:RX<=A;
						Jmp:
						begin
							IR[7:0]<=M_data_in;
							M_addr<=IR[11:0];
						end
						Read:
						begin
							IR[7:0]<=M_data_in;
							M_addr<=IR[11:0];
						end
						Write:
						begin
							IR[7:0]<=M_data_in;
							M_addr<=IR[11:0];
						end
						Jz:
						begin
							if(R0==0)
							begin
								IR<=M_data_in;
								M_addr<=IR[11:0];
							end
						end
						default:
							M_addr<=PC;
					endcase
				end
				else 
				begin
					M_data_out<=R0;
					if(OP==Swap) state<=st_0;
					else begin
						state<=st_3;
						PC<=PC+1;
					end
				end
			end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			st_3:
			begin
				if(clk)
				begin
					if(OP==Jmp) PC<=IR[11:0];
					else if(OP==Jz&&R0==0) PC<=IR[11:0];
					else if(OP==Read||OP==Write) M_addr<=PC;
				end
				else 
				begin
					if(OP==Write) Write_read<=1;
					else Write_read<=0;
					if(OP==Jmp||OP==Jz) state<=st_0;
					else state<=st_4;
				end
			end
			
			
			st_4:
			begin
				if(clk)
				begin
					if(OP==Read) R0<=M_data_in;
				end
				else 
				begin
					Write_read<=0;
					state<=st_0;
				end
			end
			
		endcase
	
		end
	end
	//assign M_addr=MAR;
	//assign M_data_out=MDR;
endmodule
