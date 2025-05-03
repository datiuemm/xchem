// mem_32x16.v - Gated Write Memory
module mem_32x16 (
    input wire clk,
    input wire [3:0] write_addr_1,
    input wire [31:0] write_data_1,
    input wire write_en_1,
    input wire [3:0] write_addr_2,
    input wire [31:0] write_data_2,
    input wire write_en_2,
    input wire [3:0] read_addr_1,
    output wire [31:0] read_data_1,
    input wire [3:0] read_addr_2,
    output wire [31:0] read_data_2
);

    reg [31:0] mem_array[0:15];

    assign read_data_1 = mem_array[read_addr_1];
    assign read_data_2 = mem_array[read_addr_2];

    always @(posedge clk) begin
        if (write_en_1)
            mem_array[write_addr_1] <= write_data_1;
        if (write_en_2)
            mem_array[write_addr_2] <= write_data_2;
    end
endmodule