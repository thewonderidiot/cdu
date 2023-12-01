MODULES = interrogate\
	  mode\
	  digital_mode\
	  error_angle\
	  coarse\
	  read_counter\
	  quadrant_selector\
	  msa_qr\
	  da_converter


COMPONENTS = nor3 \
	     schmitt


MODULE_SOURCES = $(addsuffix .v, $(addprefix modules/, $(MODULES)))
COMPONENT_SOURCES = $(addsuffix .v, $(addprefix components/, $(COMPONENTS)))

SOURCES = $(MODULE_SOURCES)\
	  $(COMPONENT_SOURCES)\
	  cdu.v

SIM_SOURCES = cdu_sim.v
WEB_SOURCES = web/cdujs.v \
	      web/clk_div.v \
	      web/main.cpp

.phony: all
all: cdu_sim

cdu_sim: $(SIM_SOURCES) $(SOURCES)
	iverilog -m va_math -o $@ $^

VERILATOR_FLAGS=-O3 --x-assign fast --x-initial fast --noassert -DTARGET_WEB=1
VERILATOR_SOURCES=/usr/share/verilator/include/verilated.cpp /usr/share/verilator/include/verilated_threads.cpp
EMCC_FLAGS=-O3 -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TRACE=0 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -DVL_IGNORE_UNKNOWN_ARCH 
EMCC_INCLUDES=-Iobj_dir -I/usr/share/verilator/include 
EMCC_EXPORTS=-sEXPORTED_FUNCTIONS=_init,_step,_set_shaft_angle,_get_agc_counter -sEXPORTED_RUNTIME_METHODS=cwrap

cdujs.js: $(WEB_SOURCES) $(SOURCES)
	verilator --prefix cdujs $(VERILATOR_FLAGS) --cc --exe $(WEB_SOURCES) $(SOURCES)
	emcc $(EMCC_FLAGS) $(EMCC_INCLUDES) $(EMCC_EXPORTS) obj_dir/*.cpp web/main.cpp $(VERILATOR_SOURCES) -o $@

.phony: run
run: cdu_sim
	vvp cdu_sim -fst -n

.phone: clean
clean:
	rm -rf cdu_sim obj_dir cdujs.js cdujs.wasm
