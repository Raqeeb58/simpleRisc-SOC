module d_flip_flop_gpio_tris(
	input clock,
	input d,
	input en,
	input reset,
	output reg q
	
);
	always@(posedge clock or posedge reset) begin
		if(reset) begin
			q <= 1'b1;
		end
		else if (en) begin
			q <= d;
		end
	end
	
endmodule