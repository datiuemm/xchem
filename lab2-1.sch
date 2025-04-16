v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 180 150 220 {
lab=vgs}
N 150 280 150 350 {
lab=GND}
N 290 350 350 350 {
lab=GND}
N 350 340 350 350 {
lab=GND}
N 290 180 350 180 {
lab=GND}
N 290 210 290 350 {
lab=GND}
N 150 350 290 350 {
lab=GND}
N 150 180 250 180 {
lab=vgs}
N 290 50 290 150 {
lab=vds}
N 290 50 460 50 {
lab=vds}
N 460 50 460 200 {
lab=vds}
N 460 260 460 340 {
lab=GND}
N 350 340 460 340 {
lab=GND}
N 350 180 350 340 {
lab=GND}
C {vsource.sym} 150 250 0 0 {name=VGS value=1.2 savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 180 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 460 230 0 0 {name=VDS value=1.2 savecurrent=false}
C {gnd.sym} 260 350 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 150 180 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {lab_pin.sym} 460 120 0 0 {name=p2 sig_type=std_logic lab=vds}
C {code_shown.sym} 660 150 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 640 250 0 0 {name=STIMULI only_toplevel=false value="
.param temp=27
.control
save all
op
dc VDS 0 1.2 0.01 VGS 0 1.2 0.05
.endc
"}
