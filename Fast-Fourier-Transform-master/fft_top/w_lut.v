// w_lut.v - Twiddle Factor LUT
module w_lut (
    input wire [2:0] addr,
    output reg [31:0] W
);
    always @(*) begin
        case (addr)
            0: W = {16'd16384, 16'd0};
            1: W = {16'd15137, -16'd6270};
            2: W = {16'd11585, -16'd11585};
            3: W = {16'd6270, -16'd15137};
            4: W = {16'd0, -16'd16384};
            5: W = {-16'd6270, -16'd15137};
            6: W = {-16'd11585, -16'd11585};
            7: W = {-16'd15137, -16'd6270};
            default: W = 32'd0;
        endcase
    end
endmodule