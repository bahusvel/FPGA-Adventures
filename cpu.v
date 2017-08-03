`include "register.v"

module cpu;

wire [31:0]bus;
register r1(bus, bus, r1i, r1o);
register r2(bus, bus, r2i, r2o);


endmodule
