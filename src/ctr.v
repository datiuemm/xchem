module ctr(
input clk, nrst,
output reg [31:0] ctr_out
);
reg [31:0] ctr;
always@(posedge clk) begin
if (!nrst)
ctr <= 0;
else
ctr <= ctr + 4'b1;
end
always@(*)
ctr_out <= ctr;
endmodule
