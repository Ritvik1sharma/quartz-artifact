#!/usr/bin/sh
cd build
make test_nam_td_disabled
mkdir -p ../circuit/nam-benchmarks/output_files/nam
./test_nam_td_disabled ../circuit/nam-benchmarks/qcla_mod_7.qasm --output ../circuit/nam-benchmarks/output_files/nam/qcla_mod_7.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/qcla_mod_7.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/tof_4.qasm --output ../circuit/nam-benchmarks/output_files/nam/tof_4.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/tof_4.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/mod_red_21.qasm --output ../circuit/nam-benchmarks/output_files/nam/mod_red_21.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/mod_red_21.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^131_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^131_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^131_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/barenco_tof_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/barenco_tof_3.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/barenco_tof_3.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/vbe_adder_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/vbe_adder_3.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/vbe_adder_3.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/qcla_com_7.qasm --output ../circuit/nam-benchmarks/output_files/nam/qcla_com_7.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/qcla_com_7.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^163_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^163_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^163_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^9_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^9_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^9_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/adder_8.qasm --output ../circuit/nam-benchmarks/output_files/nam/adder_8.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/adder_8.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^8_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^8_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^8_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^10_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^10_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^10_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/barenco_tof_10.qasm --output ../circuit/nam-benchmarks/output_files/nam/barenco_tof_10.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/barenco_tof_10.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/tof_10.qasm --output ../circuit/nam-benchmarks/output_files/nam/tof_10.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/tof_10.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^6_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^6_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^6_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/barenco_tof_4.qasm --output ../circuit/nam-benchmarks/output_files/nam/barenco_tof_4.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/barenco_tof_4.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/mod_mult_55.qasm --output ../circuit/nam-benchmarks/output_files/nam/mod_mult_55.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/mod_mult_55.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/barenco_tof_5.qasm --output ../circuit/nam-benchmarks/output_files/nam/barenco_tof_5.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/barenco_tof_5.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/csum_mux_9.qasm --output ../circuit/nam-benchmarks/output_files/nam/csum_mux_9.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/csum_mux_9.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/csla_mux_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/csla_mux_3.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/csla_mux_3.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/mod_adder_1024.qasm --output ../circuit/nam-benchmarks/output_files/nam/mod_adder_1024.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/mod_adder_1024.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/rc_adder_6.qasm --output ../circuit/nam-benchmarks/output_files/nam/rc_adder_6.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/rc_adder_6.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^7_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^7_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^7_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^4_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^4_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^4_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^5_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^5_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^5_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/tof_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/tof_3.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/tof_3.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^128_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^128_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^128_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^16_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^16_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^16_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^64_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^64_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^64_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/gf2^32_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^32_mult.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/gf2^32_mult.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/qcla_adder_10.qasm --output ../circuit/nam-benchmarks/output_files/nam/qcla_adder_10.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/qcla_adder_10.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/tof_5.qasm --output ../circuit/nam-benchmarks/output_files/nam/tof_5.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/tof_5.log &
./test_nam_td_disabled ../circuit/nam-benchmarks/mod5_4.qasm --output ../circuit/nam-benchmarks/output_files/nam/mod5_4.qasm.output.nam.disable_td > ../circuit/nam-benchmarks/output_files/nam/log/mod5_4.log &
