class Buah {
  String namabuah = "Anggur"; //deklarasi variabel

  //method buahku untuk print
  void Buahku() {
    print(namabuah);
  }
}

class Car {
  // field
  String engine = "E1001";

  // function
  void disp() {
    print(engine);
  }
}

void main() {
  Buah c = new Buah(); //inisisi class buah
  Car c1 = new Car(); ////inisiai class car
  c.Buahku(); //memanggil fundgsi Buahku di class buah
  c1.disp();
}
