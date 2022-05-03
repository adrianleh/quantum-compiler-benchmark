OPENQASM 2.0;
include "qelib1.inc";
gate ccz q0,q1,q2 { p(pi/4) q1; p(pi/4) q2; cx q1,q2; u(0,0,-pi/4) q2; cx q1,q2; u(0,0,0) q2; cx q1,q0; p(-pi/4) q0; p(pi/4) q2; cx q0,q2; u(0,0,pi/4) q2; cx q0,q2; u(0,-pi/2,0) q2; cx q1,q0; p(pi/4) q0; p(pi/4) q2; cx q0,q2; u(0,0,-pi/4) q2; cx q0,q2; u(0,0,0) q2; }
qreg q[19];
h q[10];
ccz q[0], q[1], q[10];
h q[10];
h q[11];
ccz q[2], q[10], q[11];
h q[11];
h q[12];
ccz q[3], q[11], q[12];
h q[12];
h q[13];
ccz q[4], q[12], q[13];
h q[13];
h q[14];
ccz q[5], q[13], q[14];
h q[14];
h q[15];
ccz q[6], q[14], q[15];
h q[15];
h q[16];
ccz q[7], q[15], q[16];
h q[16];
h q[17];
ccz q[8], q[16], q[17];
h q[17];
h q[18];
ccz q[9], q[17], q[18];
h q[18];
h q[17];
ccz q[8], q[16], q[17];
h q[17];
h q[16];
ccz q[7], q[15], q[16];
h q[16];
h q[15];
ccz q[6], q[14], q[15];
h q[15];
h q[14];
ccz q[5], q[13], q[14];
h q[14];
h q[13];
ccz q[4], q[12], q[13];
h q[13];
h q[12];
ccz q[3], q[11], q[12];
h q[12];
h q[11];
ccz q[2], q[10], q[11];
h q[11];
h q[10];
ccz q[0], q[1], q[10];
h q[10];
