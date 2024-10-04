#!/usr/bin/sh
cd build
make test_ibmq
mkdir -p ../circuit/nam-benchmarks/output_files/nam1
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
#./test_ibmq ../circuit/nam-benchmarks/tof_3.qasm --output ../circuit/nam-benchmarks/output_files/nam1/tof_3.qasm.output.n $eqset_arg 
#./test_ibmq ../circuit/ancilla-benchmarks/adder_2.qasm --output ../circuit/nam-benchmarks/output_files/nam1/adder_2.qasm.output.n $eqset_arg &
#./test_ibmq ../circuit/ancilla-benchmarks/adder_3.qasm --output ../circuit/nam-benchmarks/output_files/nam1/adder_3.qasm.output.n $eqset_arg &
./test_ibmq ../circuit/ancilla-benchmarks/adder_6.qasm --output ../circuit/nam-benchmarks/output_files/nam1/adder_6.qasm.output.n $eqset_arg &
#./test_ibmq ../circuit/ancilla-benchmarks/intergercomparator_6.qasm --output ../circuit/nam-benchmarks/output_files/nam1/intergercomparator_6.qasm.output.n $eqset_arg &
#./test_ibmq ../circuit/ancilla-benchmarks/wa_4.qasm --output ../circuit/nam-benchmarks/output_files/nam1/wa_4.qasm.output.n $eqset_arg &
#./test_ibmq ../circuit/ancilla-benchmarks/adder_12.qasm --output ../circuit/nam-benchmarks/output_files/nam1/adder_12.qasm.output.n $eqset_arg 
