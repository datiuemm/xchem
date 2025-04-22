module ctr_tb;
reg nrst,clk;
wire [31:0] c;
ctr UUT(.ctr_out(c),.clk(clk),.nrst(nrst));
always begin
#10
clk = ~clk;
end
always begin
@(posedge clk) $display("Counter value:%b @ time %f",c,$time);
end
initial begin
$dumpfile("ctr_tb.vcd");
$dumpvars(0,ctr_tb);
// we have to start somewhere
clk = 0;
nrst = 0;
#15 nrst = 1;
#100
$finish;
end
endmodule
