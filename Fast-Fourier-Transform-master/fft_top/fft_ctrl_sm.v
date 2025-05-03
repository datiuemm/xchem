// fft_ctrl_sm.v - FSM with Clock and Butterfly Enable
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
    output reg        write_en_2_F,
    output reg        write_back_F,
    output reg        out_push_F,
    input wire        out_stall,
    output reg        fft_enable,
    output reg        bfly_valid
);

    typedef enum reg [2:0] {IDLE, LOAD, COMPUTE, OUTPUT} state_t;
    state_t state, next_state;

    reg [3:0] counter;
    reg [1:0] stage;
    reg [2:0] bfly;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            counter <= 0;
            stage <= 0;
            bfly <= 0;
        end else begin
            state <= next_state;
            if (state == LOAD && in_push) counter <= counter + 1;
            else if (state == COMPUTE) begin
                if (bfly == 3'd7) begin
                    bfly <= 0;
                    stage <= stage + 1;
                end else bfly <= bfly + 1;
            end else if (state == OUTPUT) counter <= counter + 1;
        end
    end

    always @(*) begin
        next_state = state;
        fft_enable = 0;
        bfly_valid = 0;
        in_stall_F = 1;
        out_push_F = 0;
        write_en_1_F = 0;
        write_en_2_F = 0;
        write_back_F = 0;

        read_addr_1_F = 0;
        read_addr_2_F = 0;
        write_addr_1_F = 0;
        write_addr_2_F = 0;
        write_data_1_F = {in_real, in_imag};
        W_addr_F = 0;

        case (state)
            IDLE: begin
                if (in_push) next_state = LOAD;
            end
            LOAD: begin
                fft_enable = 1;
                in_stall_F = 0;
                write_en_1_F = in_push;
                write_addr_1_F = counter;
                write_data_1_F = {in_real, in_imag};
                if (counter == 4'd15) next_state = COMPUTE;
            end
            COMPUTE: begin
                fft_enable = 1;
                bfly_valid = 1;
                // read_addr, W_addr sẽ từ LUT
                read_addr_1_F = (bfly << 1);
                read_addr_2_F = (bfly << 1) + 1;
                write_addr_1_F = (bfly << 1);
                write_addr_2_F = (bfly << 1) + 1;
                write_en_1_F = 1;
                write_en_2_F = 1;
                write_back_F = 1;
                W_addr_F = bfly;
                if (stage == 2'd3 && bfly == 3'd7)
                    next_state = OUTPUT;
            end
            OUTPUT: begin
                fft_enable = 1;
                out_push_F = 1;
                read_addr_1_F = counter;
                if (counter == 4'd15) next_state = IDLE;
            end
        endcase
    end
endmodule