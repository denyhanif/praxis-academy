class Sayur {
  String namaSayur;
  int jumlah;

  String get s_nama {
    return namaSayur;
  }

  void set s_nama(String nama) {
    this.namaSayur = nama;
  }

  int get s_jumlah {
    return jumlah;
  } // method get menggembalikan nilai

  void set s_jumlah(int jumlah) {
    if (jumlah <= 2) {
      print("jumlah tidak seauai");
    } else {
      this.jumlah = jumlah;
    }
  }
}

void main() {
  Sayur s1 = new Sayur();
  s1.s_nama = "daun singkong";
  s1.s_jumlah = 2;
  print(s1.s_nama);
  print(s1.s_jumlah);
}
