# Hello Icarus
This is a minimal hello world application simulated in Icarus Verilog.

## Build and Simulate
The build environment is configured to read input files from `input_files.txt`. When new verilog source files are added to the project they should simply be added to `input_files.txt`. All of the build artefacts are placed in a `build/` subdirectory and can be cleaned up by running `make clean`.

**Build**
The simulation executable can be built by simply running: `make`

**Simulate**
The compiled simulation executable can be run with: `make run`
