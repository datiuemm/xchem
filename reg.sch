v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -30 10 -30 {
lab=#net1}
N 10 -70 10 -30 {
lab=#net1}
N 10 -70 70 -70 {
lab=#net1}
N -210 -10 -170 -10 {
lab=Cb}
N -190 10 -170 10 {
lab=C}
N -190 10 -190 90 {
lab=C}
N -230 10 -190 10 {
lab=C}
N -190 90 30 90 {
lab=C}
N 30 -10 30 90 {
lab=C}
N 30 -10 70 -10 {
lab=C}
N -210 -10 -210 100 {
lab=Cb}
N -230 -10 -210 -10 {
lab=Cb}
N -210 100 50 100 {
lab=Cb}
N 50 10 50 100 {
lab=Cb}
N 50 10 70 10 {
lab=Cb}
N 240 -30 270 -30 {
lab=Q}
N 20 -230 90 -230 {
lab=VDD}
N -80 -170 -80 -130 {
lab=VDD}
N 20 -170 160 -170 {
lab=VDD}
N 160 -170 160 -130 {
lab=VDD}
N 20 -230 20 -170 {
lab=VDD}
N -80 -170 20 -170 {
lab=VDD}
N -80 60 -80 120 {
lab=VSS}
N -10 120 160 120 {
lab=VSS}
N 160 60 160 120 {
lab=VSS}
N -10 120 -10 200 {
lab=VSS}
N -80 120 -10 120 {
lab=VSS}
N -10 200 20 200 {
lab=VSS}
N -230 -70 -170 -70 {
lab=D}
C {xchem/xchem/dlatch.sym} -20 10 0 0 {name=x1}
C {ipin.sym} -230 10 0 0 {name=p7 lab=C}
C {ipin.sym} -230 -10 0 0 {name=p8 lab=Cb}
C {ipin.sym} -230 -70 0 0 {name=p9 lab=D}
C {xchem/xchem/dlatch.sym} 220 10 0 0 {name=x2}
C {opin.sym} 270 -30 0 0 {name=p10 lab=Q}
C {iopin.sym} 90 -230 0 0 {name=p11 lab=VDD}
C {iopin.sym} 20 200 0 0 {name=p12 lab=VSS}
