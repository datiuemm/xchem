export DESIGN_NAME = adder4
export PLATFORM    = ihp-sg13g2

export VERILOG_FILES = $(DESIGN_HOME)/src/adder4.v
export SDC_FILE      = $(DESIGN_HOME)/constraint.sdc

export USE_FILL = 1

export PLACE_DENSITY ?= 0.88
export CORE_UTILIZATION = 20
export TNS_END_PERCENT = 100
