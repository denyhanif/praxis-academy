import 'dart:io';

class Buah {
  Buah() {
    print("ini konstruktor non parameter");
  }

  Buah.namedConst(var buah) {
    print("cetak nama buah : ${buah}");
  }
}

void main() {
  Buah c1 = new Buah.namedConst(
      "buhah mahal boss satu kilo ${3000}"); // instansisi method buah non parameter dari clas Buah

  Buah c2 = new Buah(); // instansisi method buah non parameter dari clas Buah
}
