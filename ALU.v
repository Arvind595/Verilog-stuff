module ALU(op, A, B, S, en);
	input [31:0]A, B;
	input en;
	input [3:0]op;
	output reg[63:0]S;
	
	always@(op, A, B, en)begin
		if(en==1'b0) S = 64'bx;
		else begin
			case(op)
				3'b000 : S = A+B; 
				3'b001 : S = A-B;
				3'b010 : S = A*B;
				3'b011 : S = A&B; //and
				3'b100 : S = ~A;  //not
				3'b101 : S = A|B; //or
			endcase
		end
	end
endmodule
