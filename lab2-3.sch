v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 170 -200 240 {
lab=GND}
N -60 240 0 240 {
lab=GND}
N 0 230 0 240 {
lab=GND}
N -60 70 0 70 {
lab=GND}
N -60 100 -60 240 {
lab=GND}
N -200 240 -60 240 {
lab=GND}
N 110 150 110 230 {
lab=GND}
N 0 230 110 230 {
lab=GND}
N 0 70 0 230 {
lab=GND}
N -150 -20 -100 -20 {
lab=vin}
N -150 20 -150 70 {
lab=vin}
N -150 70 -100 70 {
lab=vin}
N -200 20 -200 110 {
lab=vin}
N -200 20 -150 20 {
lab=vin}
N -150 -20 -150 20 {
lab=vin}
N -60 20 -60 40 {
lab=vout}
N -60 20 50 20 {
lab=vout}
N -60 10 -60 20 {
lab=vout}
N -60 -140 -60 -50 {
lab=vdd}
N 0 -140 110 -140 {
lab=vdd}
N 110 -140 110 90 {
lab=vdd}
N -60 -20 0 -20 {
lab=vdd}
N 0 -140 -0 -20 {
lab=vdd}
N -60 -140 0 -140 {
lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 70 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 110 120 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} -90 240 0 0 {name=l1 lab=GND}
C {code_shown.sym} 310 40 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 290 140 0 0 {name=STIMULI only_toplevel=false value="
.param temp=27
.control
save all
tran 1n 10u uic
.endc
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -20 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -200 20 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 50 20 1 0 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} 10 -140 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {vsource_arith.sym} -200 140 0 0 {name=E1 VOL="'0.6 + 0.6*sin(time*2*pi*1e6)'"}
