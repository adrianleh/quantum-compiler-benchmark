OPENQASM 2.0;
include "qelib1.inc";
gate ccz q0,q1,q2 { rz(pi/4) q1; rz(pi/4) q2; cx q1,q2; rz(-pi/4) q2; cx q1,q2; cx q1,q0; rz(-pi/4) q0; rz(pi/4) q2; cx q0,q2; rz(pi/4) q2; cx q0,q2; cx q1,q0; rz(pi/4) q0; rz(-pi/4) q2; cx q0,q2; rz(-pi/4) q2; cx q0,q2; }
qreg q[7];
h q[4];
ccz q[0], q[1], q[4];
h q[4];
h q[5];
ccz q[2], q[4], q[5];
h q[5];
h q[6];
ccz q[3], q[5], q[6];
h q[6];
h q[5];
ccz q[2], q[4], q[5];
h q[5];
h q[4];
ccz q[0], q[1], q[4];
h q[4];
