void main(List<String> args) {
  Set warna1 = new Set.from(["merah", "kuning", "hijau"]);
  Set warna2 = new Set.from(["kuning", "hijau", "jinga"]);

  Set warna12 = warna2.intersection(
      warna1); //insertsection mencari warna yang sama (mengembalikan elemen yang sama dari dua buah set)

  for (String warna in warna12) {
    print(warna);
  }

  Set numberSet = new Set();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  print("Default implementation :${numberSet.runtimeType}");

  // all elements are retrieved in the order in which they are inserted
  for (var no in numberSet) {
    print(no);
  }
}
