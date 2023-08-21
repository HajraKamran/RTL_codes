module posedge_detector (in,clk,out);
input wire in;
input wire clk;
output wire out;
reg delay;

always @(posedge clk)begin 
    delay<=in; 
end

assign out = in & ~in;

endmodule