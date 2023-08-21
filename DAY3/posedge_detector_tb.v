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

initial begin
    #5; clk=~clk;
end

initial begin
    #5; 
    clk=1'b1;
    in=1'b0;
    #5;
    in=1'b1;
    #5;
    in=1'b0;
    #5;
    in=1'b1;
end


initial begin 
    $dumpfile("posedge_detector.vcd");
    $dumpvars(0,posedge_detector_tb);
end


endmodule