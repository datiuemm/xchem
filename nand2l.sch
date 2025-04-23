v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 40 -30 90 {
lab=#net1}
N -30 180 -30 200 {
lab=VSS}
N -30 120 80 120 {
lab=VSS}
N 80 120 80 180 {
lab=VSS}
N -30 180 80 180 {
lab=VSS}
N -30 150 -30 180 {
lab=VSS}
N -30 10 80 10 {
lab=VSS}
N 80 10 80 120 {
lab=VSS}
N -70 -110 -70 -80 {
lab=OUT}
N -30 -80 50 -80 {
lab=OUT}
N 50 -110 50 -80 {
lab=OUT}
N -30 -50 -30 -20 {
lab=OUT}
N -70 -80 -30 -80 {
lab=OUT}
N -70 -200 -70 -170 {
lab=#net2}
N 50 -200 50 -170 {
lab=#net2}
N -50 -200 50 -200 {
lab=#net2}
N -120 10 -70 10 {
lab=A}
N -40 -140 10 -140 {
lab=B}
N -30 -50 60 -50 {
lab=OUT}
N -30 -80 -30 -50 {
lab=OUT}
N -70 -140 -50 -140 {
lab=#net2}
N -50 -200 -50 -140 {
lab=#net2}
N -70 -200 -50 -200 {
lab=#net2}
N -120 -60 -120 10 {
lab=A}
N -120 -140 -110 -140 {
lab=A}
N -160 -60 -120 -60 {
lab=A}
N -120 -140 -120 -60 {
lab=A}
N -40 -140 -40 -40 {
lab=B}
N -100 -40 -40 -40 {
lab=B}
N -100 50 -100 120 {
lab=B}
N -100 120 -70 120 {
lab=B}
N -160 50 -100 50 {
lab=B}
N -100 -40 -100 50 {
lab=B}
N 50 -140 70 -140 {
lab=#net2}
N 70 -200 70 -140 {
lab=#net2}
N 50 -200 70 -200 {
lab=#net2}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -140 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 30 -140 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 10 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 120 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -160 -60 0 0 {name=p1 lab=A}
C {ipin.sym} -160 50 0 0 {name=p2 lab=B}
C {opin.sym} 60 -50 0 0 {name=p3 lab=OUT}
C {iopin.sym} -30 200 1 0 {name=p4 lab=VSS}
C {iopin.sym} 0 -200 3 0 {name=p5 lab=VDD}
