v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -420 -260 -380 {
lab=GND}
N -120 -440 -120 -400 {
lab=GND}
N -260 -580 -260 -480 {
lab=A}
N -120 -580 -120 -500 {
lab=B}
N -150 -580 -120 -580 {
lab=B}
N -300 -580 -260 -580 {
lab=A}
N 20 -450 20 -410 {
lab=GND}
N 20 -540 20 -510 {
lab=C}
N 140 -600 140 -500 {
lab=D}
N 140 -440 140 -420 {
lab=GND}
N 100 -600 140 -600 {
lab=D}
N -50 -540 20 -540 {
lab=C}
N 800 -790 800 -770 {
lab=GND}
N 800 -910 800 -850 {
lab=vdd}
N 490 -630 490 -610 {
lab=OUT}
N 420 -140 420 -120 {
lab=GND}
N 420 -250 420 -220 {
lab=#net1}
N 420 -340 420 -310 {
lab=#net2}
N 420 -430 420 -400 {
lab=#net3}
N 240 -770 240 -740 {
lab=OUT}
N 240 -740 350 -740 {
lab=OUT}
N 350 -770 350 -740 {
lab=OUT}
N 460 -770 460 -740 {
lab=OUT}
N 570 -770 570 -740 {
lab=OUT}
N 460 -740 570 -740 {
lab=OUT}
N 240 -880 240 -830 {
lab=vdd}
N 280 -880 350 -880 {
lab=vdd}
N 350 -880 350 -830 {
lab=vdd}
N 390 -880 460 -880 {
lab=vdd}
N 460 -880 460 -830 {
lab=vdd}
N 490 -880 570 -880 {
lab=vdd}
N 570 -880 570 -830 {
lab=vdd}
N 600 -880 730 -880 {
lab=vdd}
N 730 -910 730 -880 {
lab=vdd}
N 730 -910 800 -910 {
lab=vdd}
N 420 -740 460 -740 {
lab=OUT}
N 420 -630 490 -630 {
lab=OUT}
N 420 -630 420 -490 {
lab=OUT}
N 420 -740 420 -630 {
lab=OUT}
N 350 -740 420 -740 {
lab=OUT}
N -260 -780 -260 -580 {
lab=A}
N -260 -780 200 -780 {
lab=A}
N 200 -800 200 -780 {
lab=A}
N 200 -780 200 -460 {
lab=A}
N 200 -460 380 -460 {
lab=A}
N -120 -700 -120 -580 {
lab=B}
N -120 -700 320 -700 {
lab=B}
N 320 -790 320 -700 {
lab=B}
N 310 -790 320 -790 {
lab=B}
N 310 -800 310 -790 {
lab=B}
N 320 -700 330 -370 {
lab=B}
N 330 -370 380 -370 {
lab=B}
N 20 -670 20 -540 {
lab=C}
N 350 -670 430 -670 {
lab=C}
N 430 -790 430 -670 {
lab=C}
N 420 -790 430 -790 {
lab=C}
N 420 -800 420 -790 {
lab=C}
N 350 -670 350 -280 {
lab=C}
N 20 -670 350 -670 {
lab=C}
N 350 -280 380 -280 {
lab=C}
N 140 -600 270 -600 {
lab=D}
N 270 -600 280 -540 {
lab=D}
N 280 -540 530 -540 {
lab=D}
N 530 -800 530 -540 {
lab=D}
N 280 -540 290 -200 {
lab=D}
N 290 -200 380 -190 {
lab=D}
N 420 -460 510 -460 {
lab=GND}
N 510 -190 510 -140 {
lab=GND}
N 420 -140 510 -140 {
lab=GND}
N 420 -160 420 -140 {
lab=GND}
N 420 -190 510 -190 {
lab=GND}
N 510 -280 510 -190 {
lab=GND}
N 420 -280 510 -280 {
lab=GND}
N 510 -370 510 -280 {
lab=GND}
N 420 -370 510 -370 {
lab=GND}
N 510 -460 510 -370 {
lab=GND}
N 240 -800 280 -800 {
lab=vdd}
N 280 -880 280 -800 {
lab=vdd}
N 240 -880 280 -880 {
lab=vdd}
N 350 -800 390 -800 {
lab=vdd}
N 390 -880 390 -800 {
lab=vdd}
N 350 -880 390 -880 {
lab=vdd}
N 460 -800 490 -800 {
lab=vdd}
N 490 -880 490 -800 {
lab=vdd}
N 460 -880 490 -880 {
lab=vdd}
N 570 -800 600 -800 {
lab=vdd}
N 600 -880 600 -800 {
lab=vdd}
N 570 -880 600 -880 {
lab=vdd}
C {gnd.sym} -120 -400 0 0 {name=l3 lab=GND}
C {gnd.sym} -260 -380 0 0 {name=l4 lab=GND}
C {vsource.sym} -260 -450 0 0 {name=VA value="PULSE(0 1.2 0 1n 1n 9n 20n)" savecurrent=false}
C {vsource.sym} -120 -470 0 0 {name=VB value="PULSE(0 1.2 0 1n 1n 4n 10n)" savecurrent=false}
C {lab_pin.sym} -300 -580 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -150 -580 0 0 {name=p2 sig_type=std_logic lab=B}
C {gnd.sym} 20 -410 0 0 {name=l1 lab=GND}
C {vsource.sym} 20 -480 0 0 {name=VC value="PULSE(0 1.2 0 1n 1n 19n 40n)" savecurrent=false}
C {gnd.sym} 140 -420 0 0 {name=l6 lab=GND}
C {vsource.sym} 140 -470 0 0 {name=VD value="PULSE(0 1.2 0 1n 1n 39n 80n)" savecurrent=false}
C {lab_pin.sym} -50 -540 0 0 {name=p5 sig_type=std_logic lab=C}
C {lab_pin.sym} 100 -600 0 0 {name=p6 sig_type=std_logic lab=D}
C {code_shown.sym} 910 -800 0 0 {name=LIB only_toplevel=false value="
.lib cornerMOSlv.lib mos_tt"}
C {code_shown.sym} 930 -650 0 0 {name=SIM only_toplevel=false value="
.tran 1n 400n
.save all
"}
C {vsource.sym} 800 -820 0 0 {name=VDD value=1.2 savecurrent=false}
C {gnd.sym} 800 -770 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 800 -890 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -800 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 330 -800 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 440 -800 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 550 -800 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 490 -610 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -460 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -370 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -280 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -190 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 420 -120 0 0 {name=l5 lab=GND}
