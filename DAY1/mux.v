module mux (a,b,sel,out);
input wire [7:0] a;
input wire [7:0] b;
input wire sel;
output wire [7:0] out; //using wire with o/p because we are using it to assign

assign out = sel ? a : b;

endmodule

