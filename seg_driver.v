module seg_driver (
  input clock,
  input [15:0]bin,
  output reg [7:0]segs,
  output reg [3:0]digit
);

  reg [2:0]cdigit = 0;

  always @(posedge clock) begin
    digit = 0;
    digit[cdigit] <= 1;

    case ((bin >> (4 * cdigit)) & 'b1111)
      //		  ABCDEFG.
      0: segs = 'b11111100;
      1: segs = 'b01100000;
      2: segs = 'b11011010;
      3: segs = 'b11110010;
      4: segs = 'b01100110;
      5: segs = 'b10110110;
      6: segs = 'b10111110;
      7: segs = 'b11100000;
      8: segs = 'b11111110;
      9: segs = 'b11110110;
    'hA: segs = 'b11101110;
    'hB: segs = 'b00111110;
    'hC: segs = 'b10011100;
    'hD: segs = 'b11111010;
    'hE: segs = 'b10011110;
    'hF: segs = 'b11001110;
    endcase
    
    cdigit <= cdigit +1;
  end

endmodule
