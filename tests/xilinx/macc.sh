../../yosys -qp "synth_xilinx -top macc2; rename -top macc2_uut" macc.v -o macc_uut.v
iverilog -o test_macc macc_tb.v macc_uut.v macc.v ../../techlibs/xilinx/cells_sim.v
vvp -N ./test_macc
