void main(List<String> args) {
  Set warna1 = new Set.from(["merah", "kuning", "hijau"]);
  Set warna2 = new Set.from(["kuning", "hijau", "jinga"]);

  Set warna12 = warna2.intersection(
      warna1); //insertsection mencari warna yang sama (mengembalikan elemen yang sama dari dua buah set)

  for (String warna in warna12) {
    print(warna);
  }
}
