// Testbench
module test;

  reg clock;
  reg [15:0] bin;
  wire segments[7:0];
  wire digit[3:0];
  
  // Instantiate design under test
  seg_driver DFF(.clock(clock), .bin(bin),
          .segments(segments), .digit(digit));
          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clock = 0;
    bin = 10;
    clock = 1;
    
    /*
    $display("Reset flop.");
    clk = 0;
    reset = 1;
    d = 1'bx;
    display;
    
    $display("Release reset.");
    d = 1;
    reset = 0;
    display;

    $display("Toggle clk.");
    clk = 1;
    display;
    */
  end
  /*
  task display;
    #1 $display("segments:%0b, digit:%0b",
      segments, digit);
  endtask
  */

endmodule
