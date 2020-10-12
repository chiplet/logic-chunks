BUILD_DIR=$(abspath $(dir $(lastword $(MAKEFILE_LIST)))/build)
SOURCES=$(shell cat input_files.txt)
SIM_MAIN=tb

$(SIM_MAIN): $(SOURCES) input_files.txt | $(BUILD_DIR)
	iverilog -o $(BUILD_DIR)/$(SIM_MAIN) -f input_files.txt

run: $(SIM_MAIN)
	vvp $(BUILD_DIR)/$(SIM_MAIN)

clean:
	rm -rf $(BUILD_DIR)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)
