// butterfly.v - Low Power Version with Enable Gating
module butterfly #(
    parameter NBITS = 16
)(
    input wire clk,
    input wire enable,
    input wire signed [NBITS-1:0] Ar, Ai, Br, Bi, Wr, Wi,
    output reg signed [NBITS-1:0] Xr_F, Xi_F, Yr_F, Yi_F
);

    reg signed [NBITS-1:0] Ar_F, Ai_F, Br_F, Bi_F, Wr_F, Wi_F;
    reg signed [NBITS*2-3:0] Zra_F, Zrb_F, Zia_F, Zib_F;
    reg signed [NBITS*2-2:0] Zrsub, Ziadd;
    reg signed [NBITS*2-1:0] Xr_full_F, Xi_full_F, Yr_full_F, Yi_full_F;

    function signed [15:0] saturate(input signed [31:0] value);
        if (value > 32'sh7fff0000) saturate = 16'h7fff;
        else if (value < -32'sh80000000) saturate = 16'h8000;
        else saturate = value[28:13];
    endfunction

    always @(posedge clk) begin
        if (enable) begin
            Ar_F <= Ar; Ai_F <= Ai; Br_F <= Br; Bi_F <= Bi;
            Wr_F <= Wr; Wi_F <= Wi;

            Zra_F <= (Br_F * Wr_F) >>> 2;
            Zrb_F <= (Bi_F * Wi_F) >>> 2;
            Zia_F <= (Br_F * Wi_F) >>> 2;
            Zib_F <= (Bi_F * Wr_F) >>> 2;

            Zrsub = {Zra_F[29], Zra_F} - {Zrb_F[29], Zrb_F};
            Ziadd = {Zia_F[29], Zia_F} + {Zib_F[29], Zib_F};

            Xr_full_F <= {{4{Ar_F[15]}}, Ar_F, 12'b0} + {Zrsub[30], Zrsub};
            Xi_full_F <= {{4{Ai_F[15]}}, Ai_F, 12'b0} + {Ziadd[30], Ziadd};
            Yr_full_F <= {{4{Ar_F[15]}}, Ar_F, 12'b0} - {Zrsub[30], Zrsub};
            Yi_full_F <= {{4{Ai_F[15]}}, Ai_F, 12'b0} - {Ziadd[30], Ziadd};

            Xr_F <= saturate(Xr_full_F);
            Xi_F <= saturate(Xi_full_F);
            Yr_F <= saturate(Yr_full_F);
            Yi_F <= saturate(Yi_full_F);
        end
    end
endmodule