module d_flipflop (clk,rst,in,norst_o,syncrst_o,asyncrst_o);
  input  wire clk;
  input  wire rst;
  input  wire in;
  output reg norst_o;
  output reg syncrst_o;
  output reg asyncrst_o;

  // No reset
  always @(posedge clk)begin
    norst_o <= in;end

  // Sync reset
  always @(posedge clk)begin
    if (rst)
      syncrst_o <= 1'b0;
    else
      syncrst_o <=in;end

  // Async reset
  always @(posedge clk or posedge rst)begin
    if (rst)
      asyncrst_o <= 1'b0;
    else
      asyncrst_o <= in;end

endmodule