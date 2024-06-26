/******************************************************************************
* Copyright (c) 2020, Intel Corporation. All rights reserved.
* 
* SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception.
* 
*****************************************************************************/

//
// Created by mmoiseev on 06/14/19.
//

#include <systemc.h>

// Variable used/defined in multiple process error detecting test
struct Child : public sc_module
{
    sc_in_clk               clk;
    sc_in<bool>             rst;

    sc_in<int>              in;     
    sc_out<int>             out;
    sc_signal<int>          s;
    sc_uint<3>              v;
    sc_uint<3>              vv;
    const int               c;

    SC_CTOR(Child) : c(42)
    {
        SC_METHOD(methA);
        sensitive << in;

        SC_CTHREAD(thrA, clk.pos());
        async_reset_signal_is(rst, true);
    }

    sc_signal<int>        out1;
    sc_signal<int>        s1;
    void methA() {
        v = in.read();
        s1 = 2 - v;
        out1 = 1 + in.read();
    }

    void thrA() {
        out  = 0;
        wait();
        
        while (true) {
            int i = vv;
            wait();
            s = i + in.read();
            wait();
        }
    }
};

SC_MODULE(Top) {

    sc_in_clk       clk{"clk"};
    sc_signal<bool> rst;
    
    Child           child;
    sc_signal<int>  t;      

    SC_CTOR(Top) : child("child") 
    {
        child.clk(clk);
        child.rst(rst);
        child.in(t);
        child.out(t);
    }
};

int sc_main(int argc, char **argv) 
{
    sc_clock clk {"clk", sc_time(1, SC_NS)};
    Top top{"top"};
    top.clk(clk);
    
    sc_start();

    return 0;
}
