v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -230 -30 -120 {
lab=#net1}
N -30 -230 180 -230 {
lab=#net1}
N 180 -230 180 -140 {
lab=#net1}
N 180 -80 180 -50 {
lab=GND}
N -50 10 -50 30 {
lab=GND}
N -470 -30 -470 10 {
lab=GND}
N -370 50 -370 90 {
lab=GND}
N -270 140 -270 180 {
lab=GND}
N -470 -130 -470 -90 {
lab=D}
N -470 -130 -120 -130 {
lab=D}
N -120 -130 -120 -90 {
lab=D}
N -370 -40 -370 -10 {
lab=Cb}
N -370 -40 -120 -40 {
lab=Cb}
N -270 -20 -270 80 {
lab=C}
N -270 -20 -120 -20 {
lab=C}
N 50 -60 90 -60 {
lab=Qout}
N 90 -60 90 -20 {
lab=Qout}
N -50 -120 -30 -120 {
lab=#net1}
N 20 -70 50 -70 {
lab=Qout}
N 50 -70 50 -60 {
lab=Qout}
C {vsource.sym} 180 -110 0 0 {name=V2 value=1.2V savecurrent=false}
C {gnd.sym} 180 -50 0 0 {name=l6 lab=GND}
C {gnd.sym} -50 30 0 0 {name=l1 lab=GND}
C {code_shown.sym} 370 40 0 0 {name=SIM only_toplevel=false value="
.tran 10p 100n
.save all
"}
C {code_shown.sym} 350 -100 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {vsource.sym} -470 -60 0 0 {name=V3 value="PULSE (0V 1.2V 0 1n 1n 14n 30n)" savecurrent=false}
C {gnd.sym} -470 10 0 0 {name=l5 lab=GND}
C {vsource.sym} -370 20 0 0 {name=V1 value="PULSE (0V 1.2V 0n 1n 1n 9n 20n)" savecurrent=false}
C {gnd.sym} -370 90 0 0 {name=l2 lab=GND}
C {vsource.sym} -270 110 0 0 {name=V4 value="PULSE (0V 1.2V 10n 1n 1n 9n 20n)" savecurrent=false}
C {gnd.sym} -270 180 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -470 -130 0 0 {name=p1 sig_type=std_logic lab=D}
C {lab_pin.sym} 90 -20 0 0 {name=p4 sig_type=std_logic lab=Qout}
C {xchem/xchem/reg.sym} 30 -40 0 0 {name=x1}
C {lab_pin.sym} -370 -20 0 0 {name=p3 sig_type=std_logic lab=Cb}
C {lab_pin.sym} -270 -20 0 0 {name=p2 sig_type=std_logic lab=C}
