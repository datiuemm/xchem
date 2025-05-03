module butterfly #(
   parameter NBITS = 16
)(
   input wire                    clk,
   input wire                    enable,
   input wire signed [NBITS-1:0] Ar,
   input wire signed [NBITS-1:0] Ai,
   input wire signed [NBITS-1:0] Br,
   input wire signed [NBITS-1:0] Bi,
   input wire signed [NBITS-1:0] Wr,
   input wire signed [NBITS-1:0] Wi,
   output reg signed [NBITS-1:0] Xr_F,
   output reg signed [NBITS-1:0] Xi_F,
   output reg signed [NBITS-1:0] Yr_F,
   output reg signed [NBITS-1:0] Yi_F
);

    // Clock gating logic
    wire gated_clk;
    clock_gating_cell cg_inst (
        .clk(clk),
        .enable(enable),
        .gated_clk(gated_clk)
    );

    // Intermediate values
    wire signed [NBITS-1:0] WrBr = (Wr * Br) >>> 4;
    wire signed [NBITS-1:0] WiBi = (Wi * Bi) >>> 4;
    wire signed [NBITS-1:0] WrBi = (Wr * Bi) >>> 4;
    wire signed [NBITS-1:0] WiBr = (Wi * Br) >>> 4;

    wire signed [NBITS-1:0] Tr = WrBr - WiBi;
    wire signed [NBITS-1:0] Ti = WrBi + WiBr;

    always @(posedge gated_clk) begin
        Xr_F <= Ar + Tr;
        Xi_F <= Ai + Ti;
        Yr_F <= Ar - Tr;
        Yi_F <= Ai - Ti;
    end

endmodule

// Clock Gating Cell
module clock_gating_cell (
    input wire clk,
    input wire enable,
    output wire gated_clk
);
    assign gated_clk = enable ? clk : 1'b0;
endmodule
