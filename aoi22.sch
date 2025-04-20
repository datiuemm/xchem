v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 630 130 630 180 {
lab=#net1}
N 630 -230 630 -200 {
lab=#net2}
N 750 -230 750 -200 {
lab=#net2}
N 690 -200 750 -200 {
lab=#net2}
N 630 -320 630 -290 {
lab=vdd}
N 690 -320 750 -320 {
lab=vdd}
N 750 -320 750 -290 {
lab=vdd}
N 870 -230 870 -210 {
lab=GND}
N 690 -350 690 -320 {
lab=vdd}
N 650 -320 690 -320 {
lab=vdd}
N 790 -350 870 -350 {
lab=vdd}
N 870 -350 870 -290 {
lab=vdd}
N -550 430 -550 470 {
lab=GND}
N 10 590 10 630 {
lab=GND}
N -550 270 -550 370 {
lab=A}
N 10 450 10 530 {
lab=B}
N -20 450 10 450 {
lab=B}
N -590 270 -550 270 {
lab=A}
N 630 -260 650 -260 {
lab=vdd}
N 650 -320 650 -260 {
lab=vdd}
N 630 -320 650 -320 {
lab=vdd}
N 750 -260 790 -260 {
lab=vdd}
N 790 -350 790 -260 {
lab=vdd}
N 690 -350 790 -350 {
lab=vdd}
N 630 -60 630 -30 {
lab=OUT}
N 750 -60 750 -30 {
lab=OUT}
N 680 -30 750 -30 {
lab=OUT}
N 630 -150 630 -120 {
lab=#net2}
N 690 -150 750 -150 {
lab=#net2}
N 750 -150 750 -120 {
lab=#net2}
N 630 -90 650 -90 {
lab=vdd}
N 630 -150 690 -150 {
lab=#net2}
N 750 -90 790 -90 {
lab=vdd}
N 790 -130 790 -90 {
lab=vdd}
N 650 -130 650 -90 {
lab=vdd}
N 650 -130 790 -130 {
lab=vdd}
N 790 -260 790 -130 {
lab=vdd}
N 690 -200 690 -150 {
lab=#net2}
N 630 -200 690 -200 {
lab=#net2}
N 720 130 720 180 {
lab=#net3}
N 720 270 720 290 {
lab=GND}
N 630 40 630 70 {
lab=OUT}
N 680 40 720 40 {
lab=OUT}
N 720 40 720 70 {
lab=OUT}
N 680 0 680 40 {
lab=OUT}
N 630 -30 680 -30 {
lab=OUT}
N 630 40 680 40 {
lab=OUT}
N 680 0 750 0 {
lab=OUT}
N 680 -30 680 0 {
lab=OUT}
N 750 0 750 20 {
lab=OUT}
N 640 270 720 270 {
lab=GND}
N 630 240 630 270 {
lab=GND}
N 720 240 720 270 {
lab=GND}
N 630 210 640 210 {
lab=GND}
N 640 210 640 270 {
lab=GND}
N 630 270 640 270 {
lab=GND}
N 630 100 640 100 {
lab=GND}
N 640 100 640 210 {
lab=GND}
N 720 210 790 210 {
lab=GND}
N 790 210 790 270 {
lab=GND}
N 720 270 790 270 {
lab=GND}
N 720 100 790 100 {
lab=GND}
N 790 100 790 210 {
lab=GND}
N -550 -270 590 -260 {
lab=C}
N -550 270 -380 270 {
lab=A}
N 100 160 100 380 {
lab=A}
N 100 -70 590 -70 {
lab=A}
N 590 -90 590 -70 {
lab=A}
N 10 450 190 450 {
lab=B}
N 500 400 560 400 {
lab=D}
N 560 210 560 400 {
lab=D}
N 560 210 590 210 {
lab=D}
N 190 450 190 610 {
lab=B}
N 190 610 690 610 {
lab=B}
N 680 210 690 610 {
lab=B}
N 560 400 560 550 {
lab=D}
N 560 550 940 550 {
lab=D}
N 940 -180 940 550 {
lab=D}
N 710 -180 940 -180 {
lab=D}
N 710 -260 710 -180 {
lab=D}
N 690 610 880 610 {
lab=B}
N 880 -60 880 610 {
lab=B}
N 840 -60 880 -60 {
lab=B}
N 840 -60 840 -50 {
lab=B}
N 710 -50 840 -50 {
lab=B}
N 710 -90 710 -50 {
lab=B}
N 100 160 680 160 {
lab=A}
N 100 -70 100 160 {
lab=A}
N 680 100 680 160 {
lab=A}
N -380 270 -380 380 {
lab=A}
N -380 380 100 380 {
lab=A}
N -550 90 590 100 {
lab=C}
N -550 -270 -550 90 {
lab=C}
N -550 180 -550 220 {
lab=GND}
N -550 90 -550 120 {
lab=C}
N 500 400 500 500 {
lab=D}
N 500 560 500 580 {
lab=GND}
N 460 400 500 400 {
lab=D}
N -620 90 -550 90 {
lab=C}
C {sg13g2_pr/sg13_lv_pmos.sym} 610 -260 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -260 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 610 100 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 610 210 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {code_shown.sym} 980 -240 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 1000 -90 0 0 {name=SIM only_toplevel=false value="
.tran 1n 400n
.save all
"}
C {vsource.sym} 870 -260 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} 870 -210 0 0 {name=l2 lab=GND}
C {gnd.sym} 10 630 0 0 {name=l3 lab=GND}
C {gnd.sym} -550 470 0 0 {name=l4 lab=GND}
C {vsource.sym} -550 400 0 0 {name=VA value="PULSE(0 1.2 0 1n 1n 9n 20n)" savecurrent=false}
C {vsource.sym} 10 560 0 0 {name=VB value="PULSE(0 1.2 0 1n 1n 4n 10n)" savecurrent=false}
C {lab_pin.sym} -590 270 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -20 450 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 750 20 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 870 -330 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 610 -90 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -90 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 700 100 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 700 210 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 720 290 0 0 {name=l5 lab=GND}
C {gnd.sym} -550 220 0 0 {name=l1 lab=GND}
C {vsource.sym} -550 150 0 0 {name=VC value="PULSE(0 1.2 0 1n 1n 19n 40n)" savecurrent=false}
C {gnd.sym} 500 580 0 0 {name=l6 lab=GND}
C {vsource.sym} 500 530 0 0 {name=VD value="PULSE(0 1.2 0 1n 1n 39n 80n)" savecurrent=false}
C {lab_pin.sym} -620 90 0 0 {name=p5 sig_type=std_logic lab=C}
C {lab_pin.sym} 460 400 0 0 {name=p6 sig_type=std_logic lab=D}
