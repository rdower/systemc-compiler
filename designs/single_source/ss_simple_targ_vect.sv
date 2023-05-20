//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.5.11
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B ()
//
module B // "test_top.dut.a"
(
    input logic clk,
    input logic nrst,
    output logic run_core_ready[10],
    input logic run_core_req[10],
    input logic [15:0] run_core_data[10],
    input logic resp_core_ready,
    output logic resp_core_req,
    output logic [15:0] resp_core_data
);

// Variables generated for SystemC signals
logic run_get_req[10];
logic run_get_req_d[10];
logic run_reg_full[10];
logic run_reg_full_d[10];
logic run_core_req_d[10];
logic [15:0] run_core_data_d[10];
logic resp_put_req;
logic resp_core_req_d;
logic resp_core_ready_d;
logic [15:0] s;
logic run_clk[10];
logic run_nrst[10];
logic resp_clk;
logic resp_nrst;

// Local parameters generated for C++ constants
localparam logic run_cthread[10] = '{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
localparam logic run_always_ready[10] = '{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
localparam logic resp_sync = 0;
localparam logic resp_cthread = 0;
localparam logic resp_always_ready = 0;

// Assignments generated for C++ channel arrays
assign run_clk[0] = clk;
assign run_clk[1] = clk;
assign run_clk[2] = clk;
assign run_clk[3] = clk;
assign run_clk[4] = clk;
assign run_clk[5] = clk;
assign run_clk[6] = clk;
assign run_clk[7] = clk;
assign run_clk[8] = clk;
assign run_clk[9] = clk;
assign run_nrst[0] = nrst;
assign run_nrst[1] = nrst;
assign run_nrst[2] = nrst;
assign run_nrst[3] = nrst;
assign run_nrst[4] = nrst;
assign run_nrst[5] = nrst;
assign run_nrst[6] = nrst;
assign run_nrst[7] = nrst;
assign run_nrst[8] = nrst;
assign run_nrst[9] = nrst;
assign resp_clk = clk;
assign resp_nrst = nrst;

//------------------------------------------------------------------------------
// Method process: run_ready_control (sct_target.h:244:5) 

always_comb 
begin : run_ready_control     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[0];
    run_core_ready[0] = A || !run_reg_full[0];
end

//------------------------------------------------------------------------------
// Method process: run_full_control (sct_target.h:249:5) 

always_comb 
begin : run_full_control     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[0];
    if (A)
    begin
        run_reg_full[0] = 0;
    end else begin
        if (run_core_req_d[0])
        begin
            run_reg_full[0] = 1;
        end else begin
            run_reg_full[0] = run_reg_full_d[0];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread (sct_target.h:261:5) 

// Thread-local variables
logic run_get_req_d_next[10];
logic run_core_req_d_next[10];
logic run_reg_full_d_next[10];
logic [15:0] run_core_data_d_next[10];

// Next-state combinational logic
always_comb begin : run_core_thread_comb     // sct_target.h:261:5
    run_core_thread_func;
end
function void run_core_thread_func;
    run_core_data_d_next[0] = run_core_data_d[0];
    run_core_req_d_next[0] = run_core_req_d[0];
    run_get_req_d_next[0] = run_get_req_d[0];
    run_reg_full_d_next[0] = run_reg_full_d[0];
    run_get_req_d_next[0] = run_get_req[0];
    run_core_req_d_next[0] = run_core_req[0];
    run_reg_full_d_next[0] = run_reg_full[0];
    if (run_core_req[0] && !run_reg_full[0])
    begin
        run_core_data_d_next[0] = run_core_data[0];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[0] or negedge run_nrst[0]) 
begin : run_core_thread_ff
    if ( ~run_nrst[0] ) begin
        run_get_req_d[0] <= 0;
        run_core_req_d[0] <= 0;
        run_reg_full_d[0] <= 0;
        run_core_data_d[0] <= 0;
    end
    else begin
        run_get_req_d[0] <= run_get_req_d_next[0];
        run_core_req_d[0] <= run_core_req_d_next[0];
        run_reg_full_d[0] <= run_reg_full_d_next[0];
        run_core_data_d[0] <= run_core_data_d_next[0];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control0 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control0     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[1];
    run_core_ready[1] = A || !run_reg_full[1];
end

//------------------------------------------------------------------------------
// Method process: run_full_control0 (sct_target.h:249:5) 

always_comb 
begin : run_full_control0     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[1];
    if (A)
    begin
        run_reg_full[1] = 0;
    end else begin
        if (run_core_req_d[1])
        begin
            run_reg_full[1] = 1;
        end else begin
            run_reg_full[1] = run_reg_full_d[1];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread0 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread0_comb     // sct_target.h:261:5
    run_core_thread0_func;
end
function void run_core_thread0_func;
    run_core_data_d_next[1] = run_core_data_d[1];
    run_core_req_d_next[1] = run_core_req_d[1];
    run_get_req_d_next[1] = run_get_req_d[1];
    run_reg_full_d_next[1] = run_reg_full_d[1];
    run_get_req_d_next[1] = run_get_req[1];
    run_core_req_d_next[1] = run_core_req[1];
    run_reg_full_d_next[1] = run_reg_full[1];
    if (run_core_req[1] && !run_reg_full[1])
    begin
        run_core_data_d_next[1] = run_core_data[1];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[1] or negedge run_nrst[1]) 
begin : run_core_thread0_ff
    if ( ~run_nrst[1] ) begin
        run_get_req_d[1] <= 0;
        run_core_req_d[1] <= 0;
        run_reg_full_d[1] <= 0;
        run_core_data_d[1] <= 0;
    end
    else begin
        run_get_req_d[1] <= run_get_req_d_next[1];
        run_core_req_d[1] <= run_core_req_d_next[1];
        run_reg_full_d[1] <= run_reg_full_d_next[1];
        run_core_data_d[1] <= run_core_data_d_next[1];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo0 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control1 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control1     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[2];
    run_core_ready[2] = A || !run_reg_full[2];
end

//------------------------------------------------------------------------------
// Method process: run_full_control1 (sct_target.h:249:5) 

always_comb 
begin : run_full_control1     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[2];
    if (A)
    begin
        run_reg_full[2] = 0;
    end else begin
        if (run_core_req_d[2])
        begin
            run_reg_full[2] = 1;
        end else begin
            run_reg_full[2] = run_reg_full_d[2];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread1 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread1_comb     // sct_target.h:261:5
    run_core_thread1_func;
end
function void run_core_thread1_func;
    run_core_data_d_next[2] = run_core_data_d[2];
    run_core_req_d_next[2] = run_core_req_d[2];
    run_get_req_d_next[2] = run_get_req_d[2];
    run_reg_full_d_next[2] = run_reg_full_d[2];
    run_get_req_d_next[2] = run_get_req[2];
    run_core_req_d_next[2] = run_core_req[2];
    run_reg_full_d_next[2] = run_reg_full[2];
    if (run_core_req[2] && !run_reg_full[2])
    begin
        run_core_data_d_next[2] = run_core_data[2];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[2] or negedge run_nrst[2]) 
begin : run_core_thread1_ff
    if ( ~run_nrst[2] ) begin
        run_get_req_d[2] <= 0;
        run_core_req_d[2] <= 0;
        run_reg_full_d[2] <= 0;
        run_core_data_d[2] <= 0;
    end
    else begin
        run_get_req_d[2] <= run_get_req_d_next[2];
        run_core_req_d[2] <= run_core_req_d_next[2];
        run_reg_full_d[2] <= run_reg_full_d_next[2];
        run_core_data_d[2] <= run_core_data_d_next[2];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo1 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control2 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control2     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[3];
    run_core_ready[3] = A || !run_reg_full[3];
end

//------------------------------------------------------------------------------
// Method process: run_full_control2 (sct_target.h:249:5) 

always_comb 
begin : run_full_control2     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[3];
    if (A)
    begin
        run_reg_full[3] = 0;
    end else begin
        if (run_core_req_d[3])
        begin
            run_reg_full[3] = 1;
        end else begin
            run_reg_full[3] = run_reg_full_d[3];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread2 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread2_comb     // sct_target.h:261:5
    run_core_thread2_func;
end
function void run_core_thread2_func;
    run_core_data_d_next[3] = run_core_data_d[3];
    run_core_req_d_next[3] = run_core_req_d[3];
    run_get_req_d_next[3] = run_get_req_d[3];
    run_reg_full_d_next[3] = run_reg_full_d[3];
    run_get_req_d_next[3] = run_get_req[3];
    run_core_req_d_next[3] = run_core_req[3];
    run_reg_full_d_next[3] = run_reg_full[3];
    if (run_core_req[3] && !run_reg_full[3])
    begin
        run_core_data_d_next[3] = run_core_data[3];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[3] or negedge run_nrst[3]) 
begin : run_core_thread2_ff
    if ( ~run_nrst[3] ) begin
        run_get_req_d[3] <= 0;
        run_core_req_d[3] <= 0;
        run_reg_full_d[3] <= 0;
        run_core_data_d[3] <= 0;
    end
    else begin
        run_get_req_d[3] <= run_get_req_d_next[3];
        run_core_req_d[3] <= run_core_req_d_next[3];
        run_reg_full_d[3] <= run_reg_full_d_next[3];
        run_core_data_d[3] <= run_core_data_d_next[3];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo2 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control3 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control3     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[4];
    run_core_ready[4] = A || !run_reg_full[4];
end

//------------------------------------------------------------------------------
// Method process: run_full_control3 (sct_target.h:249:5) 

always_comb 
begin : run_full_control3     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[4];
    if (A)
    begin
        run_reg_full[4] = 0;
    end else begin
        if (run_core_req_d[4])
        begin
            run_reg_full[4] = 1;
        end else begin
            run_reg_full[4] = run_reg_full_d[4];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread3 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread3_comb     // sct_target.h:261:5
    run_core_thread3_func;
end
function void run_core_thread3_func;
    run_core_data_d_next[4] = run_core_data_d[4];
    run_core_req_d_next[4] = run_core_req_d[4];
    run_get_req_d_next[4] = run_get_req_d[4];
    run_reg_full_d_next[4] = run_reg_full_d[4];
    run_get_req_d_next[4] = run_get_req[4];
    run_core_req_d_next[4] = run_core_req[4];
    run_reg_full_d_next[4] = run_reg_full[4];
    if (run_core_req[4] && !run_reg_full[4])
    begin
        run_core_data_d_next[4] = run_core_data[4];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[4] or negedge run_nrst[4]) 
begin : run_core_thread3_ff
    if ( ~run_nrst[4] ) begin
        run_get_req_d[4] <= 0;
        run_core_req_d[4] <= 0;
        run_reg_full_d[4] <= 0;
        run_core_data_d[4] <= 0;
    end
    else begin
        run_get_req_d[4] <= run_get_req_d_next[4];
        run_core_req_d[4] <= run_core_req_d_next[4];
        run_reg_full_d[4] <= run_reg_full_d_next[4];
        run_core_data_d[4] <= run_core_data_d_next[4];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo3 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control4 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control4     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[5];
    run_core_ready[5] = A || !run_reg_full[5];
end

//------------------------------------------------------------------------------
// Method process: run_full_control4 (sct_target.h:249:5) 

always_comb 
begin : run_full_control4     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[5];
    if (A)
    begin
        run_reg_full[5] = 0;
    end else begin
        if (run_core_req_d[5])
        begin
            run_reg_full[5] = 1;
        end else begin
            run_reg_full[5] = run_reg_full_d[5];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread4 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread4_comb     // sct_target.h:261:5
    run_core_thread4_func;
end
function void run_core_thread4_func;
    run_core_data_d_next[5] = run_core_data_d[5];
    run_core_req_d_next[5] = run_core_req_d[5];
    run_get_req_d_next[5] = run_get_req_d[5];
    run_reg_full_d_next[5] = run_reg_full_d[5];
    run_get_req_d_next[5] = run_get_req[5];
    run_core_req_d_next[5] = run_core_req[5];
    run_reg_full_d_next[5] = run_reg_full[5];
    if (run_core_req[5] && !run_reg_full[5])
    begin
        run_core_data_d_next[5] = run_core_data[5];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[5] or negedge run_nrst[5]) 
begin : run_core_thread4_ff
    if ( ~run_nrst[5] ) begin
        run_get_req_d[5] <= 0;
        run_core_req_d[5] <= 0;
        run_reg_full_d[5] <= 0;
        run_core_data_d[5] <= 0;
    end
    else begin
        run_get_req_d[5] <= run_get_req_d_next[5];
        run_core_req_d[5] <= run_core_req_d_next[5];
        run_reg_full_d[5] <= run_reg_full_d_next[5];
        run_core_data_d[5] <= run_core_data_d_next[5];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo4 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control5 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control5     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[6];
    run_core_ready[6] = A || !run_reg_full[6];
end

//------------------------------------------------------------------------------
// Method process: run_full_control5 (sct_target.h:249:5) 

always_comb 
begin : run_full_control5     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[6];
    if (A)
    begin
        run_reg_full[6] = 0;
    end else begin
        if (run_core_req_d[6])
        begin
            run_reg_full[6] = 1;
        end else begin
            run_reg_full[6] = run_reg_full_d[6];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread5 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread5_comb     // sct_target.h:261:5
    run_core_thread5_func;
end
function void run_core_thread5_func;
    run_core_data_d_next[6] = run_core_data_d[6];
    run_core_req_d_next[6] = run_core_req_d[6];
    run_get_req_d_next[6] = run_get_req_d[6];
    run_reg_full_d_next[6] = run_reg_full_d[6];
    run_get_req_d_next[6] = run_get_req[6];
    run_core_req_d_next[6] = run_core_req[6];
    run_reg_full_d_next[6] = run_reg_full[6];
    if (run_core_req[6] && !run_reg_full[6])
    begin
        run_core_data_d_next[6] = run_core_data[6];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[6] or negedge run_nrst[6]) 
begin : run_core_thread5_ff
    if ( ~run_nrst[6] ) begin
        run_get_req_d[6] <= 0;
        run_core_req_d[6] <= 0;
        run_reg_full_d[6] <= 0;
        run_core_data_d[6] <= 0;
    end
    else begin
        run_get_req_d[6] <= run_get_req_d_next[6];
        run_core_req_d[6] <= run_core_req_d_next[6];
        run_reg_full_d[6] <= run_reg_full_d_next[6];
        run_core_data_d[6] <= run_core_data_d_next[6];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo5 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control6 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control6     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[7];
    run_core_ready[7] = A || !run_reg_full[7];
end

//------------------------------------------------------------------------------
// Method process: run_full_control6 (sct_target.h:249:5) 

always_comb 
begin : run_full_control6     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[7];
    if (A)
    begin
        run_reg_full[7] = 0;
    end else begin
        if (run_core_req_d[7])
        begin
            run_reg_full[7] = 1;
        end else begin
            run_reg_full[7] = run_reg_full_d[7];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread6 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread6_comb     // sct_target.h:261:5
    run_core_thread6_func;
end
function void run_core_thread6_func;
    run_core_data_d_next[7] = run_core_data_d[7];
    run_core_req_d_next[7] = run_core_req_d[7];
    run_get_req_d_next[7] = run_get_req_d[7];
    run_reg_full_d_next[7] = run_reg_full_d[7];
    run_get_req_d_next[7] = run_get_req[7];
    run_core_req_d_next[7] = run_core_req[7];
    run_reg_full_d_next[7] = run_reg_full[7];
    if (run_core_req[7] && !run_reg_full[7])
    begin
        run_core_data_d_next[7] = run_core_data[7];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[7] or negedge run_nrst[7]) 
begin : run_core_thread6_ff
    if ( ~run_nrst[7] ) begin
        run_get_req_d[7] <= 0;
        run_core_req_d[7] <= 0;
        run_reg_full_d[7] <= 0;
        run_core_data_d[7] <= 0;
    end
    else begin
        run_get_req_d[7] <= run_get_req_d_next[7];
        run_core_req_d[7] <= run_core_req_d_next[7];
        run_reg_full_d[7] <= run_reg_full_d_next[7];
        run_core_data_d[7] <= run_core_data_d_next[7];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo6 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control7 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control7     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[8];
    run_core_ready[8] = A || !run_reg_full[8];
end

//------------------------------------------------------------------------------
// Method process: run_full_control7 (sct_target.h:249:5) 

always_comb 
begin : run_full_control7     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[8];
    if (A)
    begin
        run_reg_full[8] = 0;
    end else begin
        if (run_core_req_d[8])
        begin
            run_reg_full[8] = 1;
        end else begin
            run_reg_full[8] = run_reg_full_d[8];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread7 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread7_comb     // sct_target.h:261:5
    run_core_thread7_func;
end
function void run_core_thread7_func;
    run_core_data_d_next[8] = run_core_data_d[8];
    run_core_req_d_next[8] = run_core_req_d[8];
    run_get_req_d_next[8] = run_get_req_d[8];
    run_reg_full_d_next[8] = run_reg_full_d[8];
    run_get_req_d_next[8] = run_get_req[8];
    run_core_req_d_next[8] = run_core_req[8];
    run_reg_full_d_next[8] = run_reg_full[8];
    if (run_core_req[8] && !run_reg_full[8])
    begin
        run_core_data_d_next[8] = run_core_data[8];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[8] or negedge run_nrst[8]) 
begin : run_core_thread7_ff
    if ( ~run_nrst[8] ) begin
        run_get_req_d[8] <= 0;
        run_core_req_d[8] <= 0;
        run_reg_full_d[8] <= 0;
        run_core_data_d[8] <= 0;
    end
    else begin
        run_get_req_d[8] <= run_get_req_d_next[8];
        run_core_req_d[8] <= run_core_req_d_next[8];
        run_reg_full_d[8] <= run_reg_full_d_next[8];
        run_core_data_d[8] <= run_core_data_d_next[8];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo7 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: run_ready_control8 (sct_target.h:244:5) 

always_comb 
begin : run_ready_control8     // sct_target.h:244:5
    logic A;
    A = run_get_req_d[9];
    run_core_ready[9] = A || !run_reg_full[9];
end

//------------------------------------------------------------------------------
// Method process: run_full_control8 (sct_target.h:249:5) 

always_comb 
begin : run_full_control8     // sct_target.h:249:5
    logic A;
    A = run_get_req_d[9];
    if (A)
    begin
        run_reg_full[9] = 0;
    end else begin
        if (run_core_req_d[9])
        begin
            run_reg_full[9] = 1;
        end else begin
            run_reg_full[9] = run_reg_full_d[9];
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: run_core_thread8 (sct_target.h:261:5) 

// Next-state combinational logic
always_comb begin : run_core_thread8_comb     // sct_target.h:261:5
    run_core_thread8_func;
end
function void run_core_thread8_func;
    run_core_data_d_next[9] = run_core_data_d[9];
    run_core_req_d_next[9] = run_core_req_d[9];
    run_get_req_d_next[9] = run_get_req_d[9];
    run_reg_full_d_next[9] = run_reg_full_d[9];
    run_get_req_d_next[9] = run_get_req[9];
    run_core_req_d_next[9] = run_core_req[9];
    run_reg_full_d_next[9] = run_reg_full[9];
    if (run_core_req[9] && !run_reg_full[9])
    begin
        run_core_data_d_next[9] = run_core_data[9];
    end
endfunction

// Synchronous register update
always_ff @(posedge run_clk[9] or negedge run_nrst[9]) 
begin : run_core_thread8_ff
    if ( ~run_nrst[9] ) begin
        run_get_req_d[9] <= 0;
        run_core_req_d[9] <= 0;
        run_reg_full_d[9] <= 0;
        run_core_data_d[9] <= 0;
    end
    else begin
        run_get_req_d[9] <= run_get_req_d_next[9];
        run_core_req_d[9] <= run_core_req_d_next[9];
        run_reg_full_d[9] <= run_reg_full_d_next[9];
        run_core_data_d[9] <= run_core_data_d_next[9];
    end
end

//------------------------------------------------------------------------------
// Method process: run_put_to_fifo8 (sct_target.h:230:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: resp_sync_thread (sct_initiator.h:207:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: resp_req_control (sct_initiator.h:228:5) 

always_comb 
begin : resp_req_control     // sct_initiator.h:228:5
    logic A;
    A = resp_put_req;
    if (A)
    begin
        resp_core_req = 1;
    end else begin
        if (resp_core_ready_d)
        begin
            resp_core_req = 0;
        end else begin
            resp_core_req = resp_core_req_d;
        end
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: resp_core_thread (sct_initiator.h:244:5) 

// Thread-local variables
logic resp_core_req_d_next;
logic resp_core_ready_d_next;

// Next-state combinational logic
always_comb begin : resp_core_thread_comb     // sct_initiator.h:244:5
    resp_core_thread_func;
end
function void resp_core_thread_func;
    resp_core_ready_d_next = resp_core_ready_d;
    resp_core_req_d_next = resp_core_req_d;
    resp_core_req_d_next = resp_core_req;
    resp_core_ready_d_next = resp_core_ready;
endfunction

// Synchronous register update
always_ff @(posedge resp_clk or negedge resp_nrst) 
begin : resp_core_thread_ff
    if ( ~resp_nrst ) begin
        resp_core_req_d <= 0;
        resp_core_ready_d <= 0;
    end
    else begin
        resp_core_req_d <= resp_core_req_d_next;
        resp_core_ready_d <= resp_core_ready_d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methProc (targ_vect.h:41:5) 

always_comb 
begin : methProc     // targ_vect.h:41:5
    integer unsigned i_1;
    logic TMP_0;
    logic a;
    for (integer unsigned i = 0; i < 10; ++i)
    begin
        // Call reset_get() begin
        run_get_req[i] = 0;
        // Call reset_get() end
    end
    // Call reset_put() begin
    resp_put_req = 0;
    resp_core_data = 0;
    // Call reset_put() end
    i_1 = s;
    for (integer i_2 = 0; i_2 < 10; ++i_2)
    begin
        // Call request() begin
        TMP_0 = run_core_req[i_2] || run_reg_full[i_2];
        // Call request() end
        a = TMP_0;
    end
end

endmodule

