module register (input [WIDTH-1:0]in,
    output reg [WIDTH-1:0]out,
    input store, load
    );
parameter WIDTH=32;
//input [WIDTH-1:0] in;
//output reg [WIDTH-1:0] out;
//input store, load;

reg [WIDTH-1:0]data;

always @ (posedge store)
    data <= in;

always @ (posedge load)
    out <= data;

endmodule
