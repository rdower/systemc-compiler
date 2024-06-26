/******************************************************************************
* Copyright (c) 2020, Intel Corporation. All rights reserved.
* 
* SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception.
* 
*****************************************************************************/

#include "sct_comb_signal.h"
#include <systemc.h>
#include <string>

// Combinational signal test
struct comb_signal_module : public sc_module
{
    sc_in<bool>             clk{"clk"};
    sc_in<bool>             nrst{"nrst"};
    sc_signal<bool>             a{"a"};
    sct_comb_signal<bool, 0>    req0{"req0"};
    sct_comb_signal<bool, 0>    req1{"req1"};
    sct_comb_signal<bool, 1>    req2{"req2"};
    sct_comb_signal<bool, 1>    req3{"req3"};

    // Signals written before read
    sc_signal<bool>             c{"c"};
    sct_comb_signal<bool, 0>    d{"d"};
    
    SC_CTOR(comb_signal_module) 
    {
        SC_METHOD(methProc);
        sensitive << nrst << a;

        SC_CTHREAD(thrdProc, clk.pos());
        async_reset_signal_is(nrst, 0);
    }
    
    void methProc() {
        if (nrst) {
            req1 = 0;
            req2 = 0;
        } else {
            req1 = a;
            req2 = a;
        }
    }
    
    void thrdProc() {
        bool a = 0;
        req0 = 1;
        req3 = 0;
        c = 0;
        d = 0;
        wait();             // 0
        
        while (true) {
            c = 1;
            d = 2;
            req0 = a;
            req3 = a;
            a = !a;
            wait();         // 1
        }
    }
};

struct testbench : public sc_module
{
    sc_in<bool>         clk{"clk"};
    sc_signal<bool>     nrst{"nrst"};
    comb_signal_module  mod{"mod"};
    
    SC_CTOR(testbench) 
    {
        mod.clk(clk);
        mod.nrst(nrst);
        SC_CTHREAD(test, clk.pos());
    }
    
    void test() {
        nrst = 0;
        wait(5); 
        
        nrst = 1;
        wait(10);   
        
        sc_stop();
    }
};


int sc_main(int argc, char **argv) {

    sc_clock clock_gen{"clock_gen", 1, SC_NS};
    testbench tb{"tb"};
    tb.clk(clock_gen);
    sc_start();

    return 0;
}

