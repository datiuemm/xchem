v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -40 -80 -20 {
lab=D1}
N 50 -40 130 -40 {
lab=D1}
N 130 -40 130 -20 {
lab=D1}
N -80 40 -80 60 {
lab=Y}
N 20 60 130 60 {
lab=Y}
N 130 40 130 60 {
lab=Y}
N -80 120 -80 140 {
lab=Y}
N 20 120 130 120 {
lab=Y}
N 130 120 130 140 {
lab=Y}
N -80 200 -80 220 {
lab=D0}
N -20 220 130 220 {
lab=D0}
N 130 200 130 220 {
lab=D0}
N 20 90 20 120 {
lab=Y}
N -80 60 20 60 {
lab=Y}
N -80 120 20 120 {
lab=Y}
N 20 90 200 90 {
lab=Y}
N 20 60 20 90 {
lab=Y}
N 70 170 130 170 {
lab=VSS}
N 70 170 70 280 {
lab=VSS}
N 70 280 110 280 {
lab=VSS}
N 70 10 130 10 {
lab=VSS}
N 70 10 70 170 {
lab=VSS}
N -80 10 -40 10 {
lab=VDD}
N -40 -120 -40 10 {
lab=VDD}
N -80 170 -30 170 {
lab=VDD}
N -30 10 -30 170 {
lab=VDD}
N -40 10 -30 10 {
lab=VDD}
N -220 90 -160 90 {
lab=S}
N -160 90 -160 170 {
lab=S}
N -160 170 -120 170 {
lab=S}
N -160 -160 -160 90 {
lab=S}
N -160 -160 240 -160 {
lab=S}
N 240 -160 240 10 {
lab=S}
N 170 10 240 10 {
lab=S}
N -210 230 -140 230 {
lab=Sb}
N -140 10 -140 230 {
lab=Sb}
N -140 10 -120 10 {
lab=Sb}
N -140 230 -140 360 {
lab=Sb}
N -140 360 270 360 {
lab=Sb}
N 270 170 270 360 {
lab=Sb}
N 170 170 270 170 {
lab=Sb}
N -20 220 -20 290 {
lab=D0}
N -80 220 -20 220 {
lab=D0}
N 50 -80 50 -40 {
lab=D1}
N -80 -40 50 -40 {
lab=D1}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 10 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 170 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 10 2 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 170 2 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -220 90 0 0 {name=p1 lab=S}
C {ipin.sym} -210 230 0 0 {name=p2 lab=Sb}
C {ipin.sym} -20 290 0 0 {name=p3 lab=D0}
C {ipin.sym} 50 -80 0 0 {name=p4 lab=D1}
C {iopin.sym} -40 -120 0 0 {name=p5 lab=VDD}
C {iopin.sym} 110 280 0 0 {name=p6 lab=VSS}
C {iopin.sym} 200 90 0 0 {name=p7 lab=Y}
