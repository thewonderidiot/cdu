#include "verilated.h"
#include "cdujs.h"

extern "C" {

cdujs cdu_sim;

#define TIMESTEP 20480

void init(void) {
    // Construct the Verilated model, from Vtop.h generated from Verilating
    cdu_sim.clk = 0;
    cdu_sim.rst_n = 0;
    cdu_sim.eval();
    cdu_sim.rst_n = 1;
}

void step(void) {
    for (int i = 0; i < TIMESTEP; i++) {
        cdu_sim.eval();
        cdu_sim.clk ^= 1;
    }
}

void set_shaft_angle(double angle) {
    cdu_sim.shaft_angle = angle;
}

double get_agc_counter(void) {
    return cdu_sim.cdux;
}

}
