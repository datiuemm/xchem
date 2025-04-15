v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -60 -80 20 {
lab=A}
N -80 -60 140 -60 {
lab=A}
N 200 -60 260 -60 {
lab=B}
N 260 -60 260 20 {
lab=B}
N 260 80 260 90 {
lab=GND}
N 260 90 260 100 {
lab=GND}
N -80 100 260 100 {
lab=GND}
N -80 80 -80 100 {
lab=GND}
N 80 80 80 100 {
lab=GND}
N 0 100 0 150 {
lab=GND}
N 0 100 0 150 {
lab=GND}
N 80 -60 80 20 {
lab=A}
C {res.sym} 260 50 0 0 {name=R3
value=150
footprint=1206
device=resistor
m=1}
C {res.sym} 170 -60 3 0 {name=R2
value=3.3k
footprint=1206
device=resistor
m=1}
C {res.sym} 80 50 0 0 {name=R1
value=2.2k
footprint=1206
device=resistor
m=1}
C {vsource_arith.sym} -80 50 0 0 {name=V1 VOL= 15
}
C {lab_pin.sym} -80 -30 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 240 -60 1 0 {name=p2 sig_type=std_logic lab=B}
C {gnd.sym} 0 150 0 0 {name=l1 lab=GND}
C {code_shown.sym} 300 -50 0 0 {name=SIM only_toplevel=false value=".tran 1n 1u uic	
.save @R1[i] @R2[i] @R3[i]
.save all"}
