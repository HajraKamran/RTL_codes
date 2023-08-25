`timescale 1ns/1ps
module posedge_detector_tb();
reg in;
reg clk;
wire out;

posedge_detector u_edge (
    .in(in),
    .clk(clk),
    .out(out)
);

always begin
    #5; clk=~clk;
end

initial begin
    clk=0;
    in = 1'b0; 
    #15; 
    in = 1'b1; 
    #20; 
    in = 1'b0; 
    #15; 
    in = 1'b1; 
    #10;
    in = 1'b0; 
    #20;
    $finish; 
  end


initial begin 
    $dumpfile("posedge_detector.vcd");
    $dumpvars(0,posedge_detector_tb);
end


endmodule
.