#!/usr/bin/sh
cd build
make test_nam
mkdir -p ../circuit/nam-benchmarks/output_files/nam
if [ $# -eq 0 ]
then
  eqset_arg=""
elif [ $# -eq 1 ]
then
  eqset_arg="--eqset $1"
else
  echo "Please pass only one argument for the ECC set file name."
  exit
fi
echo $eqset_arg
#./test_nam ../circuit/nam-benchmarks/csla_mux_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/csla_mux_3.qasm.output.nam $eqset_arg &
#./test_nam ../circuit/nam-benchmarks/csum_mux_9.qasm --output ../circuit/nam-benchmarks/output_files/nam/csum_mux_9.qasm.output.nam $eqset_arg &
#./test_nam ../circuit/nam-benchmarks/gf2^4_mult.qasm --output ../circuit/nam-benchmarks/output_files/nam/gf2^4_mult.qasm.output.nam $eqset_arg &
# ./test_nam ../circuit/nam-benchmarks/mod5_4.qasm --output ../circuit/nam-benchmarks/output_files/nam/mod5_4.qasm.output.nam $eqset_arg &
./test_nam ../circuit/nam-benchmarks/toff3_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/toff3.qasm.output.nam $eqset_arg 
./test_nam ../circuit/ancilla-benchmarks/wa_4.qasm --output ../circuit/nam-benchmarks/output_files/nam/wa_4.qasm.output.nam $eqset_arg 
./test_nam ../circuit/ancilla-benchmarks/intergercomparator_6.qasm --output ../circuit/nam-benchmarks/output_files/nam/intergercomparator_6.qasm.output.nam $eqset_arg 
./test_nam ../circuit/ancilla-benchmarks/adder_2.qasm --output ../circuit/nam-benchmarks/output_files/nam/adder_2.qasm.output.nam $eqset_arg 
./test_nam ../circuit/ancilla-benchmarks/adder_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/adder_3.qasm.output.nam $eqset_arg 
./test_nam ../circuit/ancilla-benchmarks/adder_6.qasm --output ../circuit/nam-benchmarks/output_files/nam/adder_6.qasm.output.nam $eqset_arg 
./test_nam ../circuit/ancilla-benchmarks/adder_12.qasm --output ../circuit/nam-benchmarks/output_files/nam/adder_12.qasm.output.nam $eqset_arg 
#./test_nam ../circuit/nam-benchmarks/taka4_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/taka4.qasm.output.nam $eqset_arg 
#./test_nam ../circuit/nam-benchmarks/taka6_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/taka6.qasm.output.nam $eqset_arg
#./test_nam ../circuit/nam-benchmarks/taka8_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/taka8.qasm.output.nam $eqset_arg
#./test_nam ../circuit/nam-benchmarks/cucc4_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/cucc4.qasm.output.nam $eqset_arg 
#./test_nam ../circuit/nam-benchmarks/cucc6_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/cucc6.qasm.output.nam $eqset_arg 
#./test_nam ../circuit/nam-benchmarks/rand6_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/rand6.qasm.output.nam $eqset_arg &
#./test_nam ../circuit/nam-benchmarks/rand11_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/rand11.qasm.output.nam $eqset_arg &
#./test_nam ../circuit/nam-benchmarks/rand16_fin.qasm --output ../circuit/nam-benchmarks/output_files/nam/rand16.qasm.output.nam $eqset_arg &
#./test_nam ../circuit/nam-benchmarks/vbe_adder_3.qasm --output ../circuit/nam-benchmarks/output_files/nam/vbe_adder_3.qasm.output.nam $eqset_arg &
