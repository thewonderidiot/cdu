MODULES = interrogate\
	  mode\
	  digital_mode\
	  error_angle\
	  coarse\
	  read_counter\
	  quadrant_selector\
	  da_converter\


COMPONENTS = nor1\
	     nor2\
	     nor3\


MODULE_SOURCES = $(addsuffix .v, $(addprefix modules/, $(MODULES)))
COMPONENT_SOURCES = $(addsuffix .v, $(addprefix components/, $(COMPONENTS)))

SOURCES = $(MODULE_SOURCES)\
	  $(COMPONENT_SOURCES)\
	  cdu.v\
	  cdu_sim.v

.phony: all
all: cdu_sim

cdu_sim: $(SOURCES)
	iverilog -m va_math -o $@ $^

.phony: run
run: cdu_sim
	vvp cdu_sim -fst

.phone: clean
clean:
	rm -f cdu_sim
