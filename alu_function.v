module alu_function(

	input [2:0]S,
	input [7:0]X,
	input [7:0]Y,
	input cin,
	output [7:0]ans,
	output reg exceed
	);
	reg [8:0] ans1;
	always
	begin
			case(S)
				3'b000:ans1<= 9'b0000_0000;
				3'b001:ans1<={1'b0,X&Y};
				3'b010:ans1<={1'b0,X|Y};
				3'b011:ans1<={1'b0,X^Y};
				3'b100:
				begin 
					ans1<=X+Y+(cin?1'b0:1'b1);
				end
				3'b101:ans1<={1'b0,X[6:0],1'b0};
				3'b110:ans1<={2'b0,X[7:1]};
				3'b111:ans1<={1'b0,((X>>7)&1)?1:0,X[7:1]};
			endcase
	end
	always
	begin
		if(S==3'b100)
		begin
			if( ans1[8]^ans1[7] ) exceed<=1;
			else exceed<=0;
		end
		else exceed<=0;
	end
	assign ans=ans1[7:0];
endmodule
