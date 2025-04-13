v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 550 270 550 300 {
lab=A}
N 550 520 550 620 {
lab=C}
N 550 360 550 460 {
lab=B}
N 550 270 760 270 {
lab=A}
N 760 270 760 450 {
lab=A}
N 760 510 760 730 {
lab=0}
N 550 730 760 730 {
lab=0}
N 550 680 550 730 {
lab=0}
C {capa.sym} 550 330 0 0 {name=C1
m=1
value=50nF
footprint=1206
device="ceramic capacitor"}
C {code.sym} 890 460 0 0 {name=STIMULI only_toplevel=false value=".tran 10n 2000u uic
.save all"}
C {res.sym} 760 480 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource_arith.sym} 550 650 0 0 {name=E1 VOL=3*cos(time*time*time*1e11)}
C {ind.sym} 550 490 0 0 {name=L1
m=1
value=10mH
footprint=1206
device=inductor}
C {lab_pin.sym} 550 570 0 0 {name=p1 sig_type=std_logic lab=C}
C {lab_pin.sym} 550 400 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 760 360 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} 760 600 0 0 {name=p4 sig_type=std_logic lab=0}
