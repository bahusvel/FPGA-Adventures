`timescale 1ns/1ns
`include "seg_driver.v"

module test;

  reg clock = 0;
  reg [15:0] bin;
  wire [7:0]segments;
  wire [3:0]digit;

  // Instantiate design under test
  seg_driver DUT(clock, bin,
          segments, digit);
  initial begin
    // Dump waves
    $dumpfile("seg_driver.vcd");
    $dumpvars(1);
    #1
    bin = 20;
    #1
    #6
    $finish;
  end

  always #1 clock = !clock;
  /*
  task display;
    #1 $display("segments:%0b, digit:%0b",
      segments, digit);
  endtask
  */

endmodule
