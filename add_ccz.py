from pathlib import Path


def add_ccz_to_file(filepath):
    f = open(filepath, 'r')
    qasm = f.read()
    f.close()
    new_qasm = add_ccz(qasm)
    f = open(filepath, 'w')
    f.write(new_qasm)
    f.close()


def add_ccz(qasm):
    if "ccz" in qasm and "gate ccz" not in qasm:
        head = "include \"qelib1.inc\";"
        new_head = """include "qelib1.inc";
gate ccz q0,q1,q2 { p(pi/4) q1; p(pi/4) q2; cx q1,q2; u(0,0,-pi/4) q2; cx q1,q2; u(0,0,0) q2; cx q1,q0; p(-pi/4) q0; p(pi/4) q2; cx q0,q2; u(0,0,pi/4) q2; cx q0,q2; u(0,-pi/2,0) q2; cx q1,q0; p(pi/4) q0; p(pi/4) q2; cx q0,q2; u(0,0,-pi/4) q2; cx q0,q2; u(0,0,0) q2; }"""
        return qasm.replace(head, new_head)
    return qasm


benchmark_files = list(Path(".").rglob("*.qasm"))

for file in benchmark_files:
    add_ccz_to_file(file)
