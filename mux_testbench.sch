v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -820 -280 -820 200 {
lab=#net1}
N -820 -280 -640 -280 {
lab=#net1}
N -820 -350 -820 -280 {
lab=#net1}
N -820 -350 -160 -350 {
lab=#net1}
N -160 -350 -160 -260 {
lab=#net1}
N -820 260 -820 410 {
lab=GND}
N -160 -140 -160 320 {
lab=GND}
N -730 260 -730 300 {
lab=GND}
N -640 -90 -640 300 {
lab=GND}
N -730 100 -730 200 {
lab=St}
N -730 -200 -660 -200 {
lab=St}
N -730 100 -230 100 {
lab=St}
N -730 -200 -730 100 {
lab=St}
N -230 -210 -230 100 {
lab=St}
N -230 -210 -180 -210 {
lab=St}
N -350 -180 -350 -110 {
lab=Sb}
N -350 -110 -200 -110 {
lab=Sb}
N -200 -190 -200 -110 {
lab=Sb}
N -200 -190 -180 -190 {
lab=Sb}
N -200 190 -200 240 {
lab=GND}
N -200 -90 -200 130 {
lab=D0}
N -200 -90 -190 -90 {
lab=D0}
N -190 -170 -190 -90 {
lab=D0}
N -190 -170 -180 -170 {
lab=D0}
N 70 80 70 140 {
lab=D1}
N 70 80 300 80 {
lab=D1}
N 300 -330 300 80 {
lab=D1}
N -270 -330 300 -330 {
lab=D1}
N -270 -330 -270 -220 {
lab=D1}
N -270 -220 -190 -220 {
lab=D1}
N -190 -230 -190 -220 {
lab=D1}
N -190 -230 -180 -230 {
lab=D1}
N 10 -200 60 -200 {
lab=OUT}
N 60 -200 60 -160 {
lab=OUT}
N 70 200 70 230 {
lab=GND}
C {xchem/xchem/mux.sym} -30 -200 0 0 {name=x1}
C {gnd.sym} -160 320 0 0 {name=l1 lab=GND}
C {vsource.sym} -820 230 0 0 {name=V2 value=1.2V savecurrent=false}
C {xchem/xchem/inverter.sym} -510 -180 0 0 {name=x2}
C {vsource.sym} -200 160 0 0 {name=V0 value="PULSE (0V 1.2V 0ns 1ns 1ns 20ns 40ns)" savecurrent=false}
C {vsource.sym} 70 170 0 0 {name=V1 value="PULSE (0V 1.2V 0ns 1ns 1ns 10ns 20ns)" savecurrent=false}
C {lab_pin.sym} 70 80 0 0 {name=p2 sig_type=std_logic lab=D1}
C {lab_pin.sym} 60 -160 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -200 -150 0 0 {name=p4 sig_type=std_logic lab=Sb}
C {lab_pin.sym} -200 80 0 0 {name=p1 sig_type=std_logic lab=D0}
C {vsource.sym} -730 230 0 0 {name=V3 value="PULSE (0V 1.2V 0ns 1ns 1ns 40ns 80ns)" savecurrent=false}
C {code_shown.sym} 490 -50 0 0 {name=SIM only_toplevel=false value="
.tran 10n 200n
.save all
"}
C {gnd.sym} -200 240 0 0 {name=l2 lab=GND}
C {gnd.sym} -640 300 0 0 {name=l4 lab=GND}
C {gnd.sym} -730 300 0 0 {name=l5 lab=GND}
C {gnd.sym} -820 410 0 0 {name=l6 lab=GND}
C {gnd.sym} 70 230 0 0 {name=l3 lab=GND}
C {code_shown.sym} 470 -190 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {lab_pin.sym} -230 -190 0 0 {name=p5 sig_type=std_logic lab=St}
