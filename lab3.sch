v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -590 50 -590 90 {
lab=GND}
N -360 50 -360 90 {
lab=GND}
N 190 -140 190 -100 {
lab=GND}
N -250 -210 -180 -210 {
lab=A}
N -250 -110 -250 -20 {
lab=A}
N -250 -20 -30 -20 {
lab=A}
N -590 -110 -590 -10 {
lab=A}
N -250 -210 -250 -110 {
lab=A}
N -70 -220 0 -220 {
lab=B}
N -70 -90 -70 60 {
lab=B}
N -70 60 -30 60 {
lab=B}
N -360 -90 -360 -10 {
lab=B}
N -360 -90 -70 -90 {
lab=B}
N -70 -220 -70 -90 {
lab=B}
N 10 100 10 120 {
lab=GND}
N 10 -20 160 -20 {
lab=GND}
N 160 60 160 100 {
lab=GND}
N 10 100 160 100 {
lab=GND}
N 10 90 10 100 {
lab=GND}
N 10 60 160 60 {
lab=GND}
N 160 -20 160 60 {
lab=GND}
N 10 10 10 30 {
lab=#net1}
N -140 -280 -140 -240 {
lab=vdd}
N -100 -280 40 -280 {
lab=vdd}
N 40 -280 40 -250 {
lab=vdd}
N -140 -210 -100 -210 {
lab=vdd}
N -100 -280 -100 -210 {
lab=vdd}
N -140 -280 -100 -280 {
lab=vdd}
N 120 -280 190 -280 {
lab=vdd}
N 40 -220 120 -220 {
lab=vdd}
N 120 -280 120 -220 {
lab=vdd}
N 40 -280 120 -280 {
lab=vdd}
N -140 -180 -140 -140 {
lab=OUT}
N 10 -140 40 -140 {
lab=OUT}
N 40 -190 40 -140 {
lab=OUT}
N 10 -100 10 -50 {
lab=OUT}
N -140 -140 10 -140 {
lab=OUT}
N 190 -280 190 -190 {
lab=vdd}
N 10 -100 80 -100 {
lab=OUT}
N 10 -140 10 -100 {
lab=OUT}
N -390 -90 -360 -90 {
lab=B}
N -630 -110 -590 -110 {
lab=A}
N -590 -110 -250 -110 {
lab=A}
C {gnd.sym} -360 90 0 0 {name=l1 lab=GND}
C {gnd.sym} -590 90 0 0 {name=l2 lab=GND}
C {vsource.sym} -590 20 0 0 {name=VA value="PULSE(0 1.2 0 1n 1n 9n 20n)" savecurrent=false}
C {vsource.sym} -360 20 0 0 {name=VB value="PULSE(0 1.2 0 1n 1n 4n 10n)" savecurrent=false}
C {vsource.sym} 190 -170 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} 190 -100 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} -160 -210 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -220 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 -20 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 60 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 10 120 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -630 -110 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -390 -90 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 80 -100 1 0 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 190 -250 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {code_shown.sym} 280 -190 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 300 -40 0 0 {name=SIM only_toplevel=false value="
.tran 1n 100n
.save all
"}
