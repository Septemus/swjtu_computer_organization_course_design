module cpu(
	clk,
	reset,
	M_data_in,
	Write_read,
	M_addr,
	M_data_out,
	overflow,
	R0,R1,R2,R3,PC,state
);


	//wire [15:0]IR;
	//wire [7:0] A,R0,R1,R2,R3,PC,RX,RY;
	//choose_rx_ry crr(clk,IR,R0,R1,R2,R3,RX,RY);
	//status_machine sm(M_data_in,clk,reset,Write_read,M_addr,M_data_out);
	//assign M_addr=MAR;
	//assign M_data_out=MDR;
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
output reg [7:0] R0=8'h00,R1=8'h00,R2=8'h00,R3=8'h00,PC=8'h00;
output reg overflow;
reg [7:0]A=8'h00,RX,RY;
//reg [7:0] MDR;
reg [15:0] IR=8'h00;
//reg[11:0] MAR;
output reg Write_read;
output reg[11:0]M_addr=12'h000;
output reg[7:0]M_data_out=8'h00;
output reg [2:0] state=st_0;
wire [3:0]OP;
reg [2:0] step_counter=3'b000;
reg flag1=1'b1;
assign OP=IR[15:12];
always@(posedge clk or negedge reset)
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
			state<=st_0;
			flag1<=1'b1;
		end
		
		else if(clk)
		begin
		//按照步长划分状态，而每个状态又有子状态
		//步长为0时执行取指令操作
			if(step_counter==3'b000)
			begin
					IR<={M_data_in,8'h00};
					Write_read<=0;
					PC<=PC+1;
					flag1<=1'b1;
					step_counter<=step_counter+1;
			end
		//步长为2时执行取操作数和运算
			else if(step_counter==3'b001)
			begin
			case(state)
				//根据寄存器选择RX，RY
				st_0:
				begin
					if(flag1)
					begin
						case(IR[11:10])
						2'b00:begin
							RX<=R0;
						end
						2'b01:begin
							RX<=R1;
						end
						2'b10:begin
							RX<=R2;
						end
						2'b11:begin
							RX<=R3;
						end
					endcase
					case(IR[9:8])
						2'b00:begin
							RY<=R0;
						end
						2'b01:begin
							RY<=R1;
						end
						2'b10:begin
							RY<=R2;
						end
						2'b11:begin
							RY<=R3;
						end
					endcase	
					flag1<=0;
					end
					else 
					begin
						A<=RY;
						M_addr<=PC;
						state<=st_1;
						flag1<=1;
					end
				end
				
				//以下内容参照实验参考书的表3
				st_1:
				
				begin

					if(flag1)
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
						flag1<=0;
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
							if(OP==Load) step_counter<=0;
							else step_counter<=step_counter+1;
							state<=st_0;
						end
						flag1<=1;
					end
					
				end
				
				
				
				
				st_2:
				begin
					if(flag1)
					begin
						Write_read<=0;
						
						case(OP)
							Swap:RX<=A;
							Jmp:
							begin
								IR[7:0]<=M_data_in;
							end
							Read:
							begin
								IR[7:0]<=M_data_in;
							end
							Write:
							begin
								IR[7:0]<=M_data_in;
							end
							Jz:
							begin
								if(R0==0)
								begin
									IR[7:0]<=M_data_in;
								end
							end
						endcase
						flag1<=0;
						if(OP!=Swap) PC<=PC+1;
					end
					else 
					begin
						M_data_out<=R0;
						if(OP==Swap) begin
							state<=st_0;
							step_counter<=step_counter+1;
							
						end
						else begin
							if(OP==Jmp||OP==Read||OP==Write) M_addr<=IR[11:0];
							else if(OP==Jz && R0==0) M_addr<=IR[11:0];
							else M_addr<=PC;
							state<=st_3;
							
						end
						flag1<=1;
					end
				end
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				st_3:
				begin
					if(flag1)
					begin
						if(OP==Jmp) PC<=IR[11:0];
						else if(OP==Jz&&R0==0) PC<=IR[11:0];
						else if(OP==Read) Write_read<=0;
						else if(OP==Write) Write_read<=1;
						flag1<=0;
					end
					else 
					begin
						if(OP==Read||OP==Write) M_addr<=PC;
						if(OP==Jmp||OP==Jz) begin
							state<=st_0;
							step_counter<=step_counter+1;
						end
						else state<=st_4;
						Write_read<=0;
						flag1<=1;
					end
					
				end
				
				
				st_4:
				begin
					if(flag1)
					begin
						if(OP==Read) R0<=M_data_in;
						flag1<=0;
					end
					else 
					begin
						Write_read<=0;
						state<=st_0;
						if(OP==Read) step_counter<=3'b000;
						else step_counter<=step_counter+1;
						flag1<=1;
					end
				end
				
			endcase
			end
			//将RX,RY的值赋值回通用寄存器
			else if(step_counter==3'b010)
			begin
				case(IR[11:10])
						2'b00:begin
							R0<=RX;
						end
						2'b01:begin
							R1<=RX;
						end
						2'b10:begin
							R2<=RX;
						end
						2'b11:begin
							R3<=RX;
						end
					endcase
					case(IR[9:8])
						2'b00:begin
							R0<=RY;
						end
						2'b01:begin
							R1<=RY;
						end
						2'b10:begin
							R2<=RY;
						end
						2'b11:begin
							R3<=RY;
						end
					endcase
					step_counter<=3'b000;
			end
		end
	end
endmodule
