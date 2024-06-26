//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.2
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;
logic line_oper;
logic arbt_ack_write;
logic t;
logic arbt_ack_write_;

// Local parameters generated for C++ constants
localparam logic signed [31:0] B = 4;
localparam logic T = 1;

//------------------------------------------------------------------------------
// Method process: for_loop_meth (test_level1.cpp:227:5) 

always_comb 
begin : for_loop_meth     // test_level1.cpp:227:5
    logic arbt_ack_;
    arbt_ack_ = 0;
    for (integer i = 0; i < 1; i++)
    begin
        arbt_ack_ = arbt_ack_ || t;
    end
    arbt_ack_write_ = arbt_ack_ && line_oper;
end

//------------------------------------------------------------------------------
// Method process: pref_inrc (test_level1.cpp:86:5) 

always_comb 
begin : pref_inrc     // test_level1.cpp:86:5
    logic [8:0] x;
    x = 11;
    x++;
    ++x;
end

//------------------------------------------------------------------------------
// Method process: const_init (test_level1.cpp:107:5) 

// Process-local variables
logic signed [31:0] m1;

always_comb 
begin : const_init     // test_level1.cpp:107:5
    integer TMP_0;
    integer i;
    integer TMP_2;
    integer j;
    integer TMP_4;
    integer k;
    integer z;
    // Call getInit() begin
    m1 = 0;
    TMP_0 = m1 + 1;
    // Call getInit() end
    i = TMP_0;
    // Call getInit() begin
    m1 = 0;
    TMP_2 = m1 + 1;
    // Call getInit() end
    j = TMP_2;
    // Call getInit2() begin
    m1 = 1;
    TMP_4 = 1;
    // Call getInit2() end
    k = TMP_4;
    z = i + j + k;
    `ifndef INTEL_SVA_OFF
        assert (k == 1) else $error("Assertion failed at test_level1.cpp:83:24>");
    `endif // INTEL_SVA_OFF
    t0 = z;
end

//------------------------------------------------------------------------------
// Method process: no_iter_loop (test_level1.cpp:120:5) 

always_comb 
begin : no_iter_loop     // test_level1.cpp:120:5
    integer k;
    k = 0;
    t1 = k;
end

//------------------------------------------------------------------------------
// Method process: fcall_const (test_level1.cpp:134:5) 

always_comb 
begin : fcall_const     // test_level1.cpp:134:5
    integer k;
    k = 0;
    k = 2;
    t2 = k;
end

//------------------------------------------------------------------------------
// Method process: binary_oper1 (test_level1.cpp:147:5) 

always_comb 
begin : binary_oper1     // test_level1.cpp:147:5
    logic b;
    b = 1;
    t3 = b;
end

//------------------------------------------------------------------------------
// Method process: binary_oper2 (test_level1.cpp:153:5) 

always_comb 
begin : binary_oper2     // test_level1.cpp:153:5
    integer i;
    integer j;
    i = 0;
    j = 0;
    j = i;
    t4 = j;
end

//------------------------------------------------------------------------------
// Method process: dead_code (test_level1.cpp:161:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Method process: simple_for (test_level1.cpp:169:5) 

always_comb 
begin : simple_for     // test_level1.cpp:169:5
    integer k;
    for (integer i = 0; i < 3; i++)
    begin
        k = 1;
        t5 = k;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_do (test_level1.cpp:176:5) 

always_comb 
begin : simple_do     // test_level1.cpp:176:5
    integer i;
    i = 0;
    do
    begin
        i++;
    end
    while (i < 3);
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper (test_level1.cpp:183:5) 

always_comb 
begin : while_with_binary_oper     // test_level1.cpp:183:5
    logic b1;
    logic b2;
    b1 = 0;
    b2 = 0;
end

//------------------------------------------------------------------------------
// Clocked THREAD: label_loop (test_level1.cpp:194:5) 

// Thread-local variables
logic arbt_ack_write_next;

// Next-state combinational logic
always_comb begin : label_loop_comb     // test_level1.cpp:194:5
    label_loop_func;
end
function void label_loop_func;
    logic arbt_ack_;
    arbt_ack_write_next = arbt_ack_write;
    arbt_ack_ = 0;
    for (integer i = 0; i < 1; i++)
    begin
        arbt_ack_ = arbt_ack_ || t;
    end
    arbt_ack_write_next = arbt_ack_ && line_oper;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : label_loop_ff
    if ( ~nrst ) begin
        arbt_ack_write <= 0;
    end
    else begin
        arbt_ack_write <= arbt_ack_write_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_loop (test_level1.cpp:212:5) 

// Next-state combinational logic
always_comb begin : for_loop_comb     // test_level1.cpp:212:5
    for_loop_func;
end
function void for_loop_func;
    logic arbt_ack_;
    arbt_ack_ = 0;
    for (integer i = 0; i < 1; i++)
    begin
        arbt_ack_ = arbt_ack_ || t;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : for_loop_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Method process: comma (test_level1.cpp:242:5) 

always_comb 
begin : comma     // test_level1.cpp:242:5
    integer j;
    j = 2;    // Call of f()
    j = 0;
end

//------------------------------------------------------------------------------
// Method process: compl_cond (test_level1.cpp:253:5) 

always_comb 
begin : compl_cond     // test_level1.cpp:253:5
    logic b;
    b = 0;
    b = b || t;
end

//------------------------------------------------------------------------------
// Method process: simple_if (test_level1.cpp:258:5) 
// Empty process, no code generated 

endmodule


