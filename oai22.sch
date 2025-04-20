v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 -280 440 -170 {
lab=#net1}
N 560 -280 560 -170 {
lab=#net2}
N 440 -370 440 -340 {
lab=vdd}
N 500 -370 560 -370 {
lab=vdd}
N 560 -370 560 -340 {
lab=vdd}
N 680 -280 680 -260 {
lab=GND}
N 500 -400 500 -370 {
lab=vdd}
N 460 -370 500 -370 {
lab=vdd}
N 600 -400 680 -400 {
lab=vdd}
N 680 -400 680 -340 {
lab=vdd}
N -740 380 -740 420 {
lab=GND}
N -180 540 -180 580 {
lab=GND}
N -740 220 -740 320 {
lab=A}
N -180 400 -180 480 {
lab=B}
N -210 400 -180 400 {
lab=B}
N -780 220 -740 220 {
lab=A}
N 440 -310 460 -310 {
lab=vdd}
N 460 -370 460 -310 {
lab=vdd}
N 440 -370 460 -370 {
lab=vdd}
N 560 -310 600 -310 {
lab=vdd}
N 600 -400 600 -310 {
lab=vdd}
N 500 -400 600 -400 {
lab=vdd}
N 440 -110 440 -80 {
lab=OUT}
N 560 -110 560 -80 {
lab=OUT}
N 490 -80 560 -80 {
lab=OUT}
N 440 -140 460 -140 {
lab=vdd}
N 560 -140 600 -140 {
lab=vdd}
N 600 -180 600 -140 {
lab=vdd}
N 460 -180 460 -140 {
lab=vdd}
N 460 -180 600 -180 {
lab=vdd}
N 600 -310 600 -180 {
lab=vdd}
N 530 220 530 240 {
lab=GND}
N 440 -10 440 20 {
lab=OUT}
N 490 -10 530 -10 {
lab=OUT}
N 530 -10 530 20 {
lab=OUT}
N 490 -50 490 -10 {
lab=OUT}
N 440 -80 490 -80 {
lab=OUT}
N 440 -10 490 -10 {
lab=OUT}
N 490 -50 560 -50 {
lab=OUT}
N 490 -80 490 -50 {
lab=OUT}
N 560 -50 560 -30 {
lab=OUT}
N 450 220 530 220 {
lab=GND}
N 440 190 440 220 {
lab=GND}
N 530 190 530 220 {
lab=GND}
N 440 160 450 160 {
lab=GND}
N 450 160 450 220 {
lab=GND}
N 440 220 450 220 {
lab=GND}
N 440 50 450 50 {
lab=GND}
N 450 50 450 160 {
lab=GND}
N 530 160 600 160 {
lab=GND}
N 600 160 600 220 {
lab=GND}
N 530 220 600 220 {
lab=GND}
N 530 50 600 50 {
lab=GND}
N 600 50 600 160 {
lab=GND}
N -740 -320 400 -310 {
lab=C}
N -740 220 -570 220 {
lab=A}
N -90 110 -90 330 {
lab=A}
N -90 -120 400 -120 {
lab=A}
N 400 -140 400 -120 {
lab=A}
N -180 400 0 400 {
lab=B}
N 310 350 370 350 {
lab=D}
N 370 160 370 350 {
lab=D}
N 370 160 400 160 {
lab=D}
N 0 400 0 560 {
lab=B}
N 0 560 500 560 {
lab=B}
N 490 160 500 560 {
lab=B}
N 370 350 370 500 {
lab=D}
N 370 500 750 500 {
lab=D}
N 750 -230 750 500 {
lab=D}
N 520 -230 750 -230 {
lab=D}
N 520 -310 520 -230 {
lab=D}
N 500 560 690 560 {
lab=B}
N 690 -110 690 560 {
lab=B}
N 650 -110 690 -110 {
lab=B}
N 650 -110 650 -100 {
lab=B}
N 520 -100 650 -100 {
lab=B}
N 520 -140 520 -100 {
lab=B}
N -90 110 490 110 {
lab=A}
N -90 -120 -90 110 {
lab=A}
N 490 50 490 110 {
lab=A}
N -570 220 -570 330 {
lab=A}
N -570 330 -90 330 {
lab=A}
N -740 40 400 50 {
lab=C}
N -740 -320 -740 40 {
lab=C}
N -740 130 -740 170 {
lab=GND}
N -740 40 -740 70 {
lab=C}
N 310 350 310 450 {
lab=D}
N 310 510 310 530 {
lab=GND}
N 270 350 310 350 {
lab=D}
N -810 40 -740 40 {
lab=C}
N 440 80 440 100 {
lab=#net3}
N 510 100 530 100 {
lab=#net3}
N 530 80 530 100 {
lab=#net3}
N 440 120 440 130 {
lab=#net3}
N 510 120 530 120 {
lab=#net3}
N 530 120 530 130 {
lab=#net3}
N 510 100 510 120 {
lab=#net3}
N 440 100 510 100 {
lab=#net3}
N 440 120 510 120 {
lab=#net3}
C {sg13g2_pr/sg13_lv_pmos.sym} 420 -310 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -310 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 50 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 160 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {code_shown.sym} 790 -290 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 810 -140 0 0 {name=SIM only_toplevel=false value="
.tran 1n 400n
.save all
"}
C {vsource.sym} 680 -310 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} 680 -260 0 0 {name=l2 lab=GND}
C {gnd.sym} -180 580 0 0 {name=l3 lab=GND}
C {gnd.sym} -740 420 0 0 {name=l4 lab=GND}
C {vsource.sym} -740 350 0 0 {name=VA value="PULSE(0 1.2 0 1n 1n 9n 20n)" savecurrent=false}
C {vsource.sym} -180 510 0 0 {name=VB value="PULSE(0 1.2 0 1n 1n 4n 10n)" savecurrent=false}
C {lab_pin.sym} -780 220 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -210 400 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 560 -30 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 680 -380 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 420 -140 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -140 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 50 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 160 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 530 240 0 0 {name=l5 lab=GND}
C {gnd.sym} -740 170 0 0 {name=l1 lab=GND}
C {vsource.sym} -740 100 0 0 {name=VC value="PULSE(0 1.2 0 1n 1n 19n 40n)" savecurrent=false}
C {gnd.sym} 310 530 0 0 {name=l6 lab=GND}
C {vsource.sym} 310 480 0 0 {name=VD value="PULSE(0 1.2 0 1n 1n 39n 80n)" savecurrent=false}
C {lab_pin.sym} -810 40 0 0 {name=p5 sig_type=std_logic lab=C}
C {lab_pin.sym} 270 350 0 0 {name=p6 sig_type=std_logic lab=D}
