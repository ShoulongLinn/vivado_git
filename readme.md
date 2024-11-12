# simple test for use git to manage Vivado FPGA project

## quick start (feel the convenience of use tcl script to generate project)
1. clone this repository
2. open Vivado tcl console
3. `cd` to the directory of this repository
4. `source ./tcl/prj_gen.tcl` and wait for the project to be generated
5. run simulation

## how to use git to manage Vivado project
1. create a new Vivado project
2. set a good source directory structure src/rtl, src/constraints, src/testbench, src/ipcore etc.
3. add every thing to your source directory src but not the project folder
4. add source files rtl/testbench, constraints, etc.
5. generate a tcl script to create the project (File -> Write Project Tcl...)
6. delete the prj folder
7. at the root of the project, git init, add, commit, push to remote repository
8. clone the repository to another directory
9. follow the quick start to generate the project