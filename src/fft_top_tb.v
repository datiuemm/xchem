`timescale 1ns / 1ps

module fft_top_tb;

   // Inputs
   reg clk;
   reg reset;
   reg in_push;
   reg [15:0] in_real;
   reg [15:0] in_imag;
   reg out_stall;

   // Outputs
   wire in_stall;
   wire out_push_F;
   wire [15:0] out_real_F;
   wire [15:0] out_imag_F;

   // Instantiate the Unit Under Test (UUT)
   fft_top uut (
      .clk(clk),
      .reset(reset),
      .in_push(in_push),
      .in_real(in_real),
      .in_imag(in_imag),
      .in_stall(in_stall),
      .out_push_F(out_push_F),
      .out_real_F(out_real_F),
      .out_imag_F(out_imag_F),
      .out_stall(out_stall)
   );

   // Clock generation
   always #5 clk = ~clk;  // 100MHz clock

   initial begin
      // Dump waveform
      $dumpfile("fft_top_tb.vcd");
      $dumpvars(0, fft_top_tb);

      // Initialize Inputs
      clk = 0;
      reset = 1;
      in_push = 0;
      in_real = 0;
      in_imag = 0;
      out_stall = 0;

      // Reset pulse
      #20;
      reset = 0;

      // Feed 16 samples to FFT input
      repeat (16) begin
         @(posedge clk);
         in_push = 1;
         in_real = $random % 32768;  // Simulated input data
         in_imag = $random % 32768;
      end

      // Stop pushing input
      @(posedge clk);
      in_push = 0;

      // Wait for output to settle
      #1000;

      // Finish simulation
      $finish;
   end

   // Display output
   always @(posedge clk) begin
      if (out_push_F) begin
         $display("Time=%0t : out_real=%d, out_imag=%d", 
                  $time, out_real_F, out_imag_F);
      end
   end

endmodule
