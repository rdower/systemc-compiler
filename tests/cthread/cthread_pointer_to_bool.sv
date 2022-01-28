//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.30
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic a;
logic b;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_pointer_to_bool.cpp:121:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic a,
    output logic b
);

// Variables generated for SystemC signals
logic rstn;

//------------------------------------------------------------------------------
// Clocked THREAD: test_ptr_comp (test_pointer_to_bool.cpp:57:5) 

// Thread-local variables
logic signed [31:0] p;
logic signed [31:0] p_next;

// Next-state combinational logic
always_comb begin : test_ptr_comp_comb     // test_pointer_to_bool.cpp:57:5
    test_ptr_comp_func;
end
function void test_ptr_comp_func;
    logic b_1;
    logic c;
    p_next = p;
    b_1 = 1;
    b_1 = 0;
    b_1 = 0;
    b_1 = 1;
    b_1 = 0;
    b_1 = 1;
    b_1 = 0;
    b_1 = 1;
    c = 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_ptr_comp_ff
    if ( ~rstn ) begin
    end
    else begin
        p <= p_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_ptr_to_bool (test_pointer_to_bool.cpp:80:5) 

// Thread-local variables
logic signed [31:0] p2;
logic signed [31:0] p2_next;

// Next-state combinational logic
always_comb begin : test_ptr_to_bool_comb     // test_pointer_to_bool.cpp:80:5
    test_ptr_to_bool_func;
end
function void test_ptr_to_bool_func;
    integer unsigned i;
    p2_next = p2;
    i = 1;
    i = 2;
    i = 3;
    i = 4;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_ptr_to_bool_ff
    if ( ~rstn ) begin
    end
    else begin
        p2 <= p2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_ptr_cond (test_pointer_to_bool.cpp:101:5) 

// Thread-local variables
logic signed [31:0] p3;
logic signed [31:0] p3_next;

// Next-state combinational logic
always_comb begin : test_ptr_cond_comb     // test_pointer_to_bool.cpp:101:5
    test_ptr_cond_func;
end
function void test_ptr_cond_func;
    integer i;
    p3_next = p3;
    i = p3_next;
    i = 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_ptr_cond_ff
    if ( ~rstn ) begin
        p3 <= 42;
    end
    else begin
        p3 <= p3_next;
    end
end

endmodule

