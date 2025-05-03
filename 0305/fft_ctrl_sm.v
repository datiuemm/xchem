// FFT Control FSM with Clock Gating
module fft_ctrl_sm (
    input wire        clk,
    input wire        reset,

    input wire        in_push,
    input wire [15:0] in_real,
    input wire [15:0] in_imag,
    output reg        in_stall_F,

    output reg [3:0]  read_addr_1_F,
    output reg [3:0]  read_addr_2_F,
    output reg [2:0]  W_addr_F,

    output reg [3:0]  write_addr_1_F,
    output reg [31:0] write_data_1_F,
    output reg        write_en_1_F,
    output reg [3:0]  write_addr_2_F,
    output reg [31:0] write_data_2_F,
    output reg        write_en_2_F
);

    // Clock gating enable signal
    wire fsm_enable;
    assign fsm_enable = in_push;  // Simple condition for demo; you can refine this logic

    // Gated clock
    wire gated_clk;
    clock_gating_cell cg_inst (
        .clk(clk),
        .enable(fsm_enable),
        .gated_clk(gated_clk)
    );

    // FSM states
    typedef enum logic [2:0] {
        IDLE  = 3'd0,
        LOAD  = 3'd1,
        CALC  = 3'd2,
        WRITE = 3'd3
    } state_t;

    state_t state, next_state;

    // Sequential logic using gated clock
    always @(posedge gated_clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (state)
            IDLE:  next_state = in_push ? LOAD : IDLE;
            LOAD:  next_state = CALC;
            CALC:  next_state = WRITE;
            WRITE: next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // Output logic
    always @(*) begin
        // Default values
        in_stall_F       = 0;
        read_addr_1_F    = 0;
        read_addr_2_F    = 0;
        W_addr_F         = 0;
        write_addr_1_F   = 0;
        write_data_1_F   = 0;
        write_en_1_F     = 0;
        write_addr_2_F   = 0;
        write_data_2_F   = 0;
        write_en_2_F     = 0;

        case (state)
            LOAD: begin
                in_stall_F = 1;
                // Setup read addresses
            end
            CALC: begin
                // Setup butterfly calculation parameters
            end
            WRITE: begin
                write_en_1_F = 1;
                write_en_2_F = 1;
                // Output data
            end
        endcase
    end

endmodule


// Clock Gating Cell (Simple)
module clock_gating_cell (
    input wire clk,
    input wire enable,
    output wire gated_clk
);
    assign gated_clk = enable ? clk : 1'b0;
endmodule

