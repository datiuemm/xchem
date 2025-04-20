v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 180 -50 230 {
lab=#net1}
N -50 320 -50 340 {
lab=GND}
N -50 260 60 260 {
lab=GND}
N 60 260 60 320 {
lab=GND}
N -50 320 60 320 {
lab=GND}
N -50 290 -50 320 {
lab=GND}
N -50 150 60 150 {
lab=GND}
N 60 150 60 260 {
lab=GND}
N -90 30 -90 60 {
lab=OUT}
N -50 60 30 60 {
lab=OUT}
N 30 30 30 60 {
lab=OUT}
N -50 90 -50 120 {
lab=OUT}
N -90 60 -50 60 {
lab=OUT}
N -90 -60 -90 -30 {
lab=vdd}
N -30 -60 30 -60 {
lab=vdd}
N 30 -60 30 -30 {
lab=vdd}
N 150 30 150 50 {
lab=GND}
N -30 -90 -30 -60 {
lab=vdd}
N -70 -60 -30 -60 {
lab=vdd}
N 70 -90 150 -90 {
lab=vdd}
N 150 -90 150 -30 {
lab=vdd}
N -630 220 -630 260 {
lab=GND}
N -370 260 -370 300 {
lab=GND}
N -630 60 -630 160 {
lab=A}
N -370 120 -370 200 {
lab=B}
N -400 120 -370 120 {
lab=B}
N -670 60 -630 60 {
lab=A}
N -630 -0 -630 60 {
lab=A}
N -630 -0 -130 -0 {
lab=A}
N -630 60 -140 60 {
lab=A}
N -140 60 -140 150 {
lab=A}
N -140 150 -90 150 {
lab=A}
N -180 120 -60 120 {
lab=B}
N -60 -0 -60 120 {
lab=B}
N -60 -0 -10 0 {
lab=B}
N -180 120 -180 260 {
lab=B}
N -370 120 -180 120 {
lab=B}
N -180 260 -90 260 {
lab=B}
N -50 90 40 90 {
lab=OUT}
N -50 60 -50 90 {
lab=OUT}
N 40 90 40 110 {
lab=OUT}
N -90 -0 -70 -0 {
lab=vdd}
N -70 -60 -70 -0 {
lab=vdd}
N -90 -60 -70 -60 {
lab=vdd}
N 30 0 70 0 {
lab=vdd}
N 70 -90 70 0 {
lab=vdd}
N -30 -90 70 -90 {
lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 0 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 10 0 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 150 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 260 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -50 340 0 0 {name=l1 lab=GND}
C {code_shown.sym} 260 20 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 280 170 0 0 {name=SIM only_toplevel=false value="
.tran 1n 100n
.save all
"}
C {vsource.sym} 150 0 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} 150 50 0 0 {name=l2 lab=GND}
C {gnd.sym} -370 300 0 0 {name=l3 lab=GND}
C {gnd.sym} -630 260 0 0 {name=l4 lab=GND}
C {vsource.sym} -630 190 0 0 {name=VA value="PULSE(0 1.2 0 1n 1n 9n 20n)" savecurrent=false}
C {vsource.sym} -370 230 0 0 {name=VB value="PULSE(0 1.2 0 1n 1n 4n 10n)" savecurrent=false}
C {lab_pin.sym} -670 60 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -400 120 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 40 110 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 150 -70 0 0 {name=p4 sig_type=std_logic lab=vdd}
