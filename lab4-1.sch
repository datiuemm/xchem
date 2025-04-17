v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -10 -240 130 {
lab=vin}
N -240 -10 -110 -10 {
lab=vin}
N -340 -100 -340 140 {
lab=vdd}
N 220 10 220 50 {
lab=vout}
N 200 10 220 10 {
lab=vout}
N -240 190 -240 230 {
lab=GND}
N -340 200 -340 230 {
lab=GND}
N -90 100 -50 100 {
lab=GND}
N -50 100 -50 170 {
lab=GND}
N -340 -100 -90 -100 {
lab=vdd}
N -90 -100 -90 -90 {
lab=vdd}
C {vsource.sym} -340 170 0 0 {name=V1 value=1.2 savecurrent=false}
C {vsource.sym} -240 160 0 0 {name=V2 value="PULSE(0 1.2 0 1n 1n 4n 10n)" savecurrent=false}
C {lab_pin.sym} -340 70 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -240 60 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_pin.sym} 220 50 0 0 {name=p3 sig_type=std_logic lab=vout
}
C {gnd.sym} -340 230 0 0 {name=l1 lab=GND}
C {gnd.sym} -240 230 0 0 {name=l2 lab=GND}
C {gnd.sym} -50 170 0 0 {name=l3 lab=GND}
C {code_shown.sym} 380 -130 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 400 20 0 0 {name=SIM only_toplevel=false value="
.tran 10p 100n
.save all
"}
C {xchem/xchem/inverter.sym} 40 10 0 0 {name=x1}
