x = "101001011110110110010011000111110"

a = x[7:len(x)]
a2 = x[0:7]

hasil = 0
for i in range(len(a)) :
    if a[i] == "1" :
        hasil += 2 ** (-(i+1))
hasil2 = 0

for i in range(len(a2)) :
    if a2[-(i+1)] == "1" :
        hasil2 += 2 ** ((i))

print(hasil + hasil2)