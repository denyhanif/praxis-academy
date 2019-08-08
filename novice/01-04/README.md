hari  04 kamis 
collection = untuk menyimpan data, dibagi jadi 4 
di dart di oakai 3
1.List
kumpulan data tipenya sama (array), tertaur , diakses dengan nomor indeksnya(indeks dimulai dari 0) 
dekalrai [] 
dua tipe yaitu fix(tgdk bisa diubah) dan growable(dinamis)

main() {
  List<String> Kota = ["bantul", "sleman", "paris"];
  for (String namaKota in Kota) {
    //string nama kota untuk print isi dalam bentuk String dari kota
    print(namaKota);
  }
}

outputnya 
bantul
sleman
paris

main() {
  List<String> Kota = ["bantul", "sleman", "paris"];
  for (String namaKota in Kota) {
    //string nama kota untuk print isi dalam bentuk String dari kota
    print(Kota);
  }
}

outputnya
[bantul, sleman, paris]
[bantul, sleman, paris]
[bantul, sleman, paris]



2.
3.