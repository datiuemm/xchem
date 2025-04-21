v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -290 -310 -290 -240 {
lab=#net1}
N -290 -310 -80 -310 {
lab=#net1}
N -80 -310 -80 -220 {
lab=#net1}
N -80 -160 -80 -130 {
lab=GND}
N -290 -50 -290 -30 {
lab=GND}
N -730 -110 -730 -70 {
lab=GND}
N -630 -30 -630 10 {
lab=GND}
N -530 60 -530 100 {
lab=GND}
N -730 -210 -730 -170 {
lab=D}
N -730 -210 -380 -210 {
lab=D}
N -380 -210 -380 -180 {
lab=D}
N -630 -120 -630 -90 {
lab=C}
N -630 -120 -380 -120 {
lab=C}
N -530 -100 -530 -0 {
lab=Cb}
N -530 -100 -380 -100 {
lab=Cb}
N -210 -140 -170 -140 {
lab=Qout}
N -170 -140 -170 -100 {
lab=Qout}
C {xchem/xchem/dlatch.sym} -230 -100 0 0 {name=x1}
C {vsource.sym} -80 -190 0 0 {name=V2 value=1.2V savecurrent=false}
C {gnd.sym} -80 -130 0 0 {name=l6 lab=GND}
C {gnd.sym} -290 -30 0 0 {name=l1 lab=GND}
C {code_shown.sym} 110 -40 0 0 {name=SIM only_toplevel=false value="
.tran 10p 100n
.save all
"}
C {code_shown.sym} 90 -180 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {vsource.sym} -730 -140 0 0 {name=V3 value="PULSE (0V 1.2V 0 100p 100p 1.4n 3n)" savecurrent=false}
C {gnd.sym} -730 -70 0 0 {name=l5 lab=GND}
C {vsource.sym} -630 -60 0 0 {name=V1 value="PULSE (0V 1.2V 0n 1n 1n 9n 20n)" savecurrent=false}
C {gnd.sym} -630 10 0 0 {name=l2 lab=GND}
C {vsource.sym} -530 30 0 0 {name=V4 value="PULSE (0V 1.2V 10n 1n 1n 9n 20n)" savecurrent=false}
C {gnd.sym} -530 100 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -730 -210 0 0 {name=p1 sig_type=std_logic lab=D}
C {lab_pin.sym} -630 -120 0 0 {name=p2 sig_type=std_logic lab=C}
C {lab_pin.sym} -530 -30 0 0 {name=p3 sig_type=std_logic lab=Cb}
C {lab_pin.sym} -170 -100 0 0 {name=p4 sig_type=std_logic lab=Qout}
