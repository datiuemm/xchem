`include "butterfly.v"
`include "fft_ctrl_sm.v"
`include "mem_32x16.v"
`include "read_addr_lut.v"
`include "w_lut.v"

module fft_top (
   input wire        clk,             
   input wire        reset,     
   input wire        in_push,
   input wire [15:0] in_real,
   input wire [15:0] in_imag,
   output wire       in_stall,
   output reg        out_push_F,
   output reg [15:0] out_real_F,
   output reg [15:0] out_imag_F,
   input wire        out_stall
);

   /****************************************************************************
    * Internal Signals
    ***************************************************************************/
   wire [3:0]  read_addr_1;
   wire [3:0]  read_addr_2;
   wire [2:0]  W_addr;
   wire [3:0]  write_addr_1;
   wire [3:0]  write_addr_2;
   wire [31:0] write_data_1;
   wire [31:0] write_data_2;
   wire        write_en_1;
   wire        write_en_2;

   wire [31:0] read_data_1;
   wire [31:0] read_data_2;

   wire signed [15:0] Wr, Wi;

   // Enable signals
   wire enable_ctrl = in_push;
   wire enable_butterfly = write_en_1 | write_en_2;
   wire enable_mem = write_en_1 | write_en_2;

   /****************************************************************************
    * Instantiations
    ***************************************************************************/

   // FFT Controller
   fft_ctrl_sm fft_ctrl_inst (
      .clk(clk),
      .reset(reset),
      .in_push(in_push),
      .in_real(in_real),
      .in_imag(in_imag),
      .in_stall_F(in_stall),
      .read_addr_1_F(read_addr_1),
      .read_addr_2_F(read_addr_2),
      .W_addr_F(W_addr),
      .write_addr_1_F(write_addr_1),
      .write_data_1_F(write_data_1),
      .write_en_1_F(write_en_1),
      .write_addr_2_F(write_addr_2),
      .write_data_2_F(write_data_2),
      .write_en_2_F(write_en_2)
   );

   // Twiddle Factor LUT
   w_lut w_lut_inst (
      .addr(W_addr),
      .Wr(Wr),
      .Wi(Wi)
   );

   // Read Address LUT (if needed)
   read_addr_lut read_lut_inst (
      .addr(W_addr),
      .read_addr_out_1(),  // Kết nối tùy vào yêu cầu
      .read_addr_out_2()
   );

   // Butterfly
   butterfly #(.NBITS(16)) butterfly_inst (
      .clk(clk),
      .enable(enable_butterfly),
      .Ar(read_data_1[31:16]),
      .Ai(read_data_1[15:0]),
      .Br(read_data_2[31:16]),
      .Bi(read_data_2[15:0]),
      .Wr(Wr),
      .Wi(Wi),
      .Xr_F(write_data_1[31:16]),
      .Xi_F(write_data_1[15:0]),
      .Yr_F(write_data_2[31:16]),
      .Yi_F(write_data_2[15:0])
   );

   // Memory
   mem_32x16 mem_inst (
      .clk(clk),
      .enable(enable_mem),
      .write_addr_1(write_addr_1),
      .write_data_1(write_data_1),
      .write_en_1(write_en_1),
      .write_addr_2(write_addr_2),
      .write_data_2(write_data_2),
      .write_en_2(write_en_2),
      .read_addr_1(read_addr_1),
      .read_data_1(read_data_1),
      .read_addr_2(read_addr_2),
      .read_data_2(read_data_2)
   );

endmodule
