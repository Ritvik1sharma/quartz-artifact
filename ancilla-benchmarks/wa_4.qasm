OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
h q[7];
h q[8];
cx q[4],q[8];
tdg q[8];
cx q[0],q[8];
t q[8];
cx q[4],q[8];
t q[4];
tdg q[8];
cx q[0],q[8];
cx q[0],q[4];
t q[0];
tdg q[4];
cx q[0],q[4];
cx q[0],q[4];
u3(pi,0,pi) q[4];
t q[8];
h q[8];
h q[9];
cx q[8],q[9];
tdg q[9];
h q[10];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
cx q[12],q[9];
t q[5];
cx q[0],q[5];
t q[0];
tdg q[5];
cx q[0],q[5];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[0],q[5];
t q[0];
tdg q[5];
cx q[0],q[5];
h q[5];
cx q[6],q[12];
tdg q[12];
cx q[8],q[5];
tdg q[5];
cx q[0],q[5];
t q[5];
cx q[8],q[5];
tdg q[5];
cx q[0],q[5];
t q[5];
h q[5];
u3(pi,0,pi) q[5];
t q[8];
cx q[0],q[8];
t q[0];
tdg q[8];
cx q[0],q[8];
cx q[0],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
t q[6];
cx q[0],q[6];
t q[0];
tdg q[6];
cx q[0],q[6];
t q[9];
h q[9];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
cx q[10],q[7];
tdg q[7];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
h q[12];
t q[6];
cx q[0],q[6];
t q[0];
tdg q[6];
cx q[0],q[6];
h q[6];
cx q[9],q[6];
tdg q[6];
cx q[0],q[6];
t q[6];
cx q[9],q[6];
tdg q[6];
cx q[0],q[6];
t q[6];
h q[6];
u3(pi,0,pi) q[6];
cx q[6],q[12];
tdg q[12];
t q[9];
cx q[0],q[9];
t q[0];
tdg q[9];
cx q[0],q[9];
cx q[0],q[7];
t q[7];
cx q[10],q[7];
t q[10];
tdg q[7];
cx q[0],q[7];
cx q[0],q[10];
t q[0];
tdg q[10];
cx q[0],q[10];
cx q[0],q[12];
h q[10];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
t q[6];
cx q[0],q[6];
t q[0];
tdg q[6];
cx q[0],q[6];
t q[7];
h q[7];
h q[7];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
h q[10];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
h q[12];
cx q[5],q[12];
tdg q[12];
t q[6];
cx q[0],q[6];
t q[0];
tdg q[6];
cx q[0],q[6];
cx q[0],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
t q[5];
cx q[0],q[5];
t q[0];
tdg q[5];
cx q[0],q[5];
u3(pi,0,pi) q[6];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[0],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[0],q[5];
t q[0];
tdg q[5];
cx q[0],q[5];
u3(pi,0,pi) q[5];
u3(pi,0,pi) q[5];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
t q[5];
cx q[1],q[5];
t q[1];
tdg q[5];
cx q[1],q[5];
h q[8];
cx q[4],q[8];
tdg q[8];
cx q[0],q[8];
t q[8];
cx q[4],q[8];
t q[4];
tdg q[8];
cx q[0],q[8];
cx q[0],q[4];
t q[0];
tdg q[4];
cx q[0],q[4];
u3(pi,0,pi) q[4];
t q[8];
h q[8];
u3(pi,0,pi) q[8];
t q[9];
h q[9];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[1],q[5];
t q[1];
tdg q[5];
cx q[1],q[5];
u3(pi,0,pi) q[5];
cx q[6],q[12];
tdg q[12];
u3(pi,0,pi) q[8];
t q[9];
h q[9];
cx q[1],q[9];
cx q[1],q[5];
h q[5];
cx q[8],q[5];
tdg q[5];
cx q[1],q[5];
t q[5];
cx q[8],q[5];
tdg q[5];
cx q[1],q[5];
t q[5];
h q[5];
t q[8];
cx q[1],q[8];
t q[1];
tdg q[8];
cx q[1],q[8];
cx q[1],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
t q[6];
cx q[1],q[6];
t q[1];
tdg q[6];
cx q[1],q[6];
u3(pi,0,pi) q[8];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
cx q[10],q[7];
tdg q[7];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
h q[12];
t q[6];
cx q[1],q[6];
t q[1];
tdg q[6];
cx q[1],q[6];
h q[6];
cx q[9],q[6];
tdg q[6];
cx q[1],q[6];
t q[6];
cx q[9],q[6];
tdg q[6];
cx q[1],q[6];
t q[6];
h q[6];
u3(pi,0,pi) q[6];
cx q[6],q[12];
tdg q[12];
t q[9];
cx q[1],q[9];
t q[1];
tdg q[9];
cx q[1],q[9];
cx q[1],q[7];
t q[7];
cx q[10],q[7];
t q[10];
tdg q[7];
cx q[1],q[7];
cx q[1],q[10];
t q[1];
tdg q[10];
cx q[1],q[10];
cx q[1],q[12];
h q[10];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
t q[6];
cx q[1],q[6];
t q[1];
tdg q[6];
cx q[1],q[6];
t q[7];
h q[7];
h q[7];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
h q[10];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
h q[12];
cx q[5],q[12];
tdg q[12];
t q[6];
cx q[1],q[6];
t q[1];
tdg q[6];
cx q[1],q[6];
cx q[1],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
t q[5];
cx q[1],q[5];
t q[1];
tdg q[5];
cx q[1],q[5];
u3(pi,0,pi) q[6];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[1],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[1],q[5];
t q[1];
tdg q[5];
cx q[1],q[5];
u3(pi,0,pi) q[5];
cx q[5],q[12];
tdg q[12];
u3(pi,0,pi) q[8];
h q[8];
cx q[4],q[8];
tdg q[8];
cx q[2],q[8];
t q[8];
cx q[4],q[8];
t q[4];
tdg q[8];
cx q[2],q[8];
cx q[2],q[4];
t q[2];
tdg q[4];
cx q[2],q[4];
cx q[2],q[4];
cx q[2],q[12];
t q[12];
u3(pi,0,pi) q[4];
cx q[5],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
t q[5];
cx q[2],q[5];
t q[2];
tdg q[5];
cx q[2],q[5];
t q[8];
h q[8];
u3(pi,0,pi) q[8];
t q[9];
h q[9];
cx q[1],q[9];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[2],q[5];
t q[2];
tdg q[5];
cx q[2],q[5];
u3(pi,0,pi) q[5];
cx q[6],q[12];
tdg q[12];
u3(pi,0,pi) q[8];
t q[9];
h q[9];
cx q[2],q[9];
cx q[2],q[5];
h q[5];
cx q[8],q[5];
tdg q[5];
cx q[2],q[5];
t q[5];
cx q[8],q[5];
tdg q[5];
cx q[2],q[5];
t q[5];
h q[5];
t q[8];
cx q[2],q[8];
t q[2];
tdg q[8];
cx q[2],q[8];
cx q[2],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
t q[6];
cx q[2],q[6];
t q[2];
tdg q[6];
cx q[2],q[6];
u3(pi,0,pi) q[8];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
cx q[10],q[7];
tdg q[7];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
h q[12];
t q[6];
cx q[2],q[6];
t q[2];
tdg q[6];
cx q[2],q[6];
h q[6];
cx q[9],q[6];
tdg q[6];
cx q[2],q[6];
t q[6];
cx q[9],q[6];
tdg q[6];
cx q[2],q[6];
t q[6];
h q[6];
u3(pi,0,pi) q[6];
cx q[6],q[12];
tdg q[12];
t q[9];
cx q[2],q[9];
t q[2];
tdg q[9];
cx q[2],q[9];
cx q[2],q[7];
t q[7];
cx q[10],q[7];
t q[10];
tdg q[7];
cx q[2],q[7];
cx q[2],q[10];
tdg q[10];
t q[2];
cx q[2],q[10];
h q[10];
cx q[2],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
t q[6];
cx q[2],q[6];
t q[2];
tdg q[6];
cx q[2],q[6];
t q[7];
h q[7];
h q[7];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
h q[10];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
h q[12];
cx q[5],q[12];
tdg q[12];
t q[6];
cx q[2],q[6];
t q[2];
tdg q[6];
cx q[2],q[6];
cx q[2],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
t q[5];
cx q[2],q[5];
t q[2];
tdg q[5];
cx q[2],q[5];
u3(pi,0,pi) q[6];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[2],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[2],q[5];
t q[2];
tdg q[5];
cx q[2],q[5];
u3(pi,0,pi) q[5];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
t q[5];
cx q[3],q[5];
t q[3];
tdg q[5];
cx q[3],q[5];
u3(pi,0,pi) q[8];
h q[8];
cx q[4],q[8];
tdg q[8];
t q[9];
h q[9];
cx q[2],q[9];
cx q[2],q[8];
t q[8];
cx q[4],q[8];
t q[4];
tdg q[8];
cx q[2],q[8];
cx q[2],q[4];
t q[2];
tdg q[4];
cx q[2],q[4];
u3(pi,0,pi) q[4];
t q[8];
h q[8];
u3(pi,0,pi) q[8];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
h q[12];
t q[5];
cx q[3],q[5];
t q[3];
tdg q[5];
cx q[3],q[5];
u3(pi,0,pi) q[5];
cx q[6],q[12];
tdg q[12];
u3(pi,0,pi) q[8];
t q[9];
h q[9];
cx q[3],q[9];
cx q[3],q[5];
h q[5];
cx q[8],q[5];
tdg q[5];
cx q[3],q[5];
t q[5];
cx q[8],q[5];
tdg q[5];
cx q[3],q[5];
t q[5];
h q[5];
t q[8];
cx q[3],q[8];
t q[3];
tdg q[8];
cx q[3],q[8];
cx q[3],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
t q[6];
cx q[3],q[6];
t q[3];
tdg q[6];
cx q[3],q[6];
u3(pi,0,pi) q[8];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
cx q[10],q[7];
tdg q[7];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
h q[12];
t q[6];
cx q[3],q[6];
t q[3];
tdg q[6];
cx q[3],q[6];
h q[6];
cx q[9],q[6];
tdg q[6];
cx q[3],q[6];
t q[6];
cx q[9],q[6];
tdg q[6];
cx q[3],q[6];
t q[6];
h q[6];
u3(pi,0,pi) q[6];
cx q[6],q[12];
tdg q[12];
t q[9];
cx q[3],q[9];
t q[3];
tdg q[9];
cx q[3],q[9];
cx q[3],q[7];
t q[7];
cx q[10],q[7];
t q[10];
tdg q[7];
cx q[3],q[7];
cx q[3],q[10];
tdg q[10];
t q[3];
cx q[3],q[10];
h q[10];
cx q[3],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
t q[6];
cx q[3],q[6];
t q[3];
tdg q[6];
cx q[3],q[6];
t q[7];
h q[7];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
cx q[9],q[10];
tdg q[10];
cx q[12],q[10];
t q[10];
h q[10];
t q[9];
cx q[12],q[9];
t q[12];
tdg q[9];
cx q[12],q[9];
h q[12];
cx q[6],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
cx q[6],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
h q[12];
cx q[5],q[12];
tdg q[12];
t q[6];
cx q[3],q[6];
t q[3];
tdg q[6];
cx q[3],q[6];
cx q[3],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
t q[5];
cx q[3],q[5];
t q[3];
tdg q[5];
cx q[3],q[5];
u3(pi,0,pi) q[6];
h q[9];
cx q[8],q[9];
tdg q[9];
cx q[12],q[9];
t q[9];
cx q[8],q[9];
t q[8];
tdg q[9];
cx q[12],q[9];
cx q[12],q[8];
t q[12];
tdg q[8];
cx q[12],q[8];
h q[12];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
cx q[5],q[12];
tdg q[12];
cx q[3],q[12];
t q[12];
h q[12];
t q[5];
cx q[3],q[5];
t q[3];
tdg q[5];
cx q[3],q[5];
u3(pi,0,pi) q[8];
t q[9];
h q[9];
cx q[3],q[9];
