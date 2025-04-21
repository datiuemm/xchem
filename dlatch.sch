v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 -0 200 -0 {
lab=#net1}
N 510 20 550 20 {
lab=Q}
N 550 180 550 350 {
lab=Q}
N 190 350 550 350 {
lab=Q}
N -140 60 -140 110 {
lab=VSS}
N -140 -90 -140 -60 {
lab=VDD}
N 220 -110 220 -80 {
lab=VDD}
N 220 110 220 160 {
lab=VSS}
N 170 180 170 240 {
lab=VSS}
N 170 430 170 460 {
lab=VDD}
N -220 330 -120 330 {
lab=#net2}
N -220 -30 -220 330 {
lab=#net2}
N -220 -30 -160 -30 {
lab=#net2}
N -260 -10 -160 -10 {
lab=C}
N -260 10 -160 10 {
lab=Cb}
N -260 30 -160 30 {
lab=D}
N 550 180 670 180 {
lab=Q}
N 550 20 550 180 {
lab=Q}
N 120 590 190 590 {
lab=VSS}
N 140 -250 210 -250 {
lab=VDD}
C {xchem/xchem/mux.sym} -10 0 0 0 {name=x1}
C {xchem/xchem/inverter.sym} 350 20 0 0 {name=x2}
C {xchem/xchem/inverter.sym} 40 330 2 0 {name=x3}
C {lab_pin.sym} 170 180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 460 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 160 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -140 110 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -140 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {ipin.sym} -260 -10 0 0 {name=p7 lab=C}
C {ipin.sym} -260 10 0 0 {name=p8 lab=Cb}
C {ipin.sym} -260 30 0 0 {name=p9 lab=D}
C {opin.sym} 670 180 0 0 {name=p10 lab=Q}
C {iopin.sym} 210 -250 0 0 {name=p11 lab=VDD}
C {iopin.sym} 190 590 0 0 {name=p12 lab=VSS}
