module posedge_detector (in,clk,out);
input wire in;
input wire clk;
output reg out;
reg delay;

always @(posedge clk)begin 
    delay<=in; 
    out <= in & ~delay;
end

endmodule