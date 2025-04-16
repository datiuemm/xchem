v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -140 -180 -30 {
lab=A}
N -180 -140 -60 -140 {
lab=A}
N -180 30 -180 70 {
lab=GND}
N -180 70 100 70 {
lab=GND}
N 100 20 100 70 {
lab=GND}
N -380 -140 -180 -140 {
lab=A}
N -280 70 -180 70 {
lab=GND}
N -380 0 -380 70 {
lab=GND}
N -280 70 -280 120 {
lab=GND}
N -380 70 -280 70 {
lab=GND}
N -380 -140 -380 -60 {
lab=A}
N 0 -140 100 -140 {
lab=B}
N 100 -140 100 -40 {
lab=B}
C {res.sym} -180 0 0 0 {name=R1
value=2.2k
footprint=1206
device=resistor
m=1}
C {res.sym} 100 -10 0 0 {name=R2
value=150
footprint=1206
device=resistor
m=1}
C {res.sym} -30 -140 3 0 {name=R3
value=3.3k
footprint=1206
device=resistor
m=1}
C {vsource_arith.sym} 550 650 0 0 {name=E1 VOL=3*cos(time*time*time*1e11)}
C {vsource_arith.sym} -380 -30 0 0 {name=V1 VOL=15}
C {gnd.sym} -280 120 0 0 {name=l1 lab=GND}
C {code_shown.sym} 260 -30 0 0 {name=SIM only_toplevel=false value=".tran 1n 1u uic	
.save @R1[i] @R2[i] @R3[i]
.save all"}
C {lab_pin.sym} -380 -120 0 0 {name=p1 sig_type=std_logic lab=A
}
C {lab_pin.sym} -380 -120 0 0 {name=p2 sig_type=std_logic lab=A
}
C {lab_pin.sym} -790 -140 0 0 {name=p3 sig_type=std_logic lab=A
}
C {lab_pin.sym} 100 -140 1 0 {name=p4 sig_type=std_logic lab=B}
