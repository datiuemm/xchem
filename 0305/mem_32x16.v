module mem_32x16 (
   input wire         clk,
   input wire         enable,
   input wire  [3:0]  write_addr_1,
   input wire  [31:0] write_data_1,
   input wire         write_en_1,
   input wire  [3:0]  write_addr_2,
   input wire  [31:0] write_data_2,
   input wire         write_en_2,
   input wire  [3:0]  read_addr_1,
   output wire [31:0] read_data_1,
   input wire  [3:0]  read_addr_2,
   output wire [31:0] read_data_2
);

    // Clock gating
    wire gated_clk;
    clock_gating_cell cg_inst (
        .clk(clk),
        .enable(enable),
        .gated_clk(gated_clk)
    );

    // Memory array
    reg [31:0] mem [15:0];

    // Write ports
    always @(posedge gated_clk) begin
        if (write_en_1)
            mem[write_addr_1] <= write_data_1;
        if (write_en_2)
            mem[write_addr_2] <= write_data_2;
    end

    // Read ports (combinational)
    assign read_data_1 = mem[read_addr_1];
    assign read_data_2 = mem[read_addr_2];

endmodule

// Clock Gating Cell
module clock_gating_cell (
    input wire clk,
    input wire enable,
    output wire gated_clk
);
    assign gated_clk = enable ? clk : 1'b0;
endmodule
