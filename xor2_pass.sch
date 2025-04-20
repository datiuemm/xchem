
v {version=1.0}
GND {name=GND}
VDD {name=VDD}
ipin {name=A}
ipin {name=B}
opin {name=Y}

# Transistor 1: A AND !B
M1 n1 A B GND sg13_lv_nmos w=0.42u l=0.13u

# Transistor 2: B AND !A
M2 n2 B A GND sg13_lv_nmos w=0.42u l=0.13u

# Kết nối đầu ra Y từ hai nhánh
R1 n1 Y 10
R2 n2 Y 10

# GND tham chiếu
.include /path/to/your/sg13g2_models.spice
