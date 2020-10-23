//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_forloop_other_types.cpp:173:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: sc_type_for_uint (test_forloop_other_types.cpp:45:5) 

always_comb 
begin : sc_type_for_uint     // test_forloop_other_types.cpp:45:5
    integer a_1[8];
    for (logic [3:0] i = 0; i < 8; i++)
    begin
        a_1[i] = i;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_bigint (test_forloop_other_types.cpp:55:5) 

always_comb 
begin : sc_type_for_bigint     // test_forloop_other_types.cpp:55:5
    integer a2[10];
    integer unsigned a_u[20];
    logic signed [63:0] a_l[20];
    logic [63:0] a_ul[20];
    logic signed [39:0] a_bint;
    for (logic signed [9:0] i2 = 0; i2 < 10; i2++)
    begin
        a2[i2] = i2;
    end
    for (logic signed [63:0] i3 = 0; i3 < 10; i3++)
    begin
        a_u[i3] = i3;
    end
    for (logic signed [39:0] i3 = 0; i3 < 10; i3++)
    begin
        a_l[i3] = i3;
    end
    for (logic signed [39:0] i3 = 0; i3 < 10; i3++)
    begin
        a_ul[i3] = i3;
    end
    a_bint = 0;
    for (logic signed [114:0] i4 = 0; i4 < 10; i4++)
    begin
        a_bint[i4] = |i4;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_biguint (test_forloop_other_types.cpp:82:5) 

always_comb 
begin : sc_type_for_biguint     // test_forloop_other_types.cpp:82:5
    integer abuint2[10];
    integer unsigned abuint_u[20];
    logic signed [63:0] abuint_l[20];
    logic [63:0] abuint_ul[20];
    logic [39:0] a_buint;
    for (logic [39:0] ibu2 = 0; ibu2 < 10; ibu2++)
    begin
        abuint2[ibu2] = ibu2;
    end
    for (logic [44:0] ibu3 = 0; ibu3 < 10; ibu3++)
    begin
        abuint_u[ibu3] = ibu3;
    end
    for (logic [139:0] ibu3 = 0; ibu3 < 10; ibu3++)
    begin
        abuint_l[ibu3] = ibu3;
    end
    for (logic [64:0] ibu3 = 0; ibu3 < 10; ibu3++)
    begin
        abuint_ul[ibu3] = ibu3;
    end
    a_buint = 0;
    for (logic [4:0] ibu4 = 0; ibu4 < 10; ibu4++)
    begin
        a_buint[ibu4] = |ibu4;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_long (test_forloop_other_types.cpp:109:5) 

always_comb 
begin : sc_type_for_long     // test_forloop_other_types.cpp:109:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic signed [63:0] long_x = 0; long_x < 10; long_x++)
    begin
        a_1[long_x] = |long_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_ulong (test_forloop_other_types.cpp:118:5) 

always_comb 
begin : sc_type_for_ulong     // test_forloop_other_types.cpp:118:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic [63:0] ulong_x = 0; ulong_x < 10; ulong_x++)
    begin
        a_1[ulong_x] = |ulong_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_short (test_forloop_other_types.cpp:127:5) 

always_comb 
begin : sc_type_for_short     // test_forloop_other_types.cpp:127:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic signed [15:0] short_x = 0; short_x < 10; short_x++)
    begin
        a_1[short_x] = |short_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_ushort (test_forloop_other_types.cpp:136:5) 

always_comb 
begin : sc_type_for_ushort     // test_forloop_other_types.cpp:136:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic [15:0] ushort_x = 0; ushort_x < 10; ushort_x++)
    begin
        a_1[ushort_x] = |ushort_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_uint128 (test_forloop_other_types.cpp:154:5) 

always_comb 
begin : sc_type_for_uint128     // test_forloop_other_types.cpp:154:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic [127:0] uint128_x = 0; uint128_x < 10; uint128_x++)
    begin
        a_1[uint128_x] = |uint128_x;
    end
end

//------------------------------------------------------------------------------
// Method process: sc_type_for_int128 (test_forloop_other_types.cpp:145:5) 

always_comb 
begin : sc_type_for_int128     // test_forloop_other_types.cpp:145:5
    logic [9:0] a_1;
    a_1 = 0;
    for (logic signed [127:0] int128_x = 0; int128_x < 10; int128_x++)
    begin
        a_1[int128_x] = |int128_x;
    end
end

endmodule

