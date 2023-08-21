`timescale 1ns/1ps
module mux_tb ();
  reg [7:0] a;
  reg [7:0] b;
  reg sel;
  wire [7:0] out;

  mux u_mux (
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
  );

  initial begin
    a=8'd6;
    b=8'd7;
    sel=1'd0;
    #5; 

    a=8'd6;
    b=8'd7;
    sel=1'd1;
    #5; 
    end

  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);
  end
endmodule
