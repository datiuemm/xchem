v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -130 -50 40 {
lab=A}
N -50 -130 40 -130 {
lab=A}
N -50 40 40 40 {
lab=A}
N 80 -50 80 10 {
lab=Y}
N 80 -50 170 -50 {
lab=Y}
N 80 -100 80 -50 {
lab=Y}
N 80 70 80 110 {
lab=VSS}
N 80 -190 80 -160 {
lab=VDD}
N 80 -130 170 -130 {
lab=VDD}
N 170 -180 170 -130 {
lab=VDD}
N 80 -180 170 -180 {
lab=VDD}
N 80 40 200 40 {
lab=VSS}
N 200 40 200 90 {
lab=VSS}
N 80 90 200 90 {
lab=VSS}
C {ipin.sym} -50 -50 0 0 {name=p1 lab=A}
C {iopin.sym} 80 -190 3 0 {name=p2 lab=VDD}
C {iopin.sym} 80 110 1 0 {name=p3 lab=VSS}
C {opin.sym} 170 -50 0 0 {name=p5 lab=Y}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -130 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 40 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
