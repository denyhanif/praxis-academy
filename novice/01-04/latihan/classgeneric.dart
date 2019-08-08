/*main(List<String> args) {
  Dog d = new Dog.newBorn();
  // print(d.age);
  // toString() => "Have you been to ${d.age}, ${d.name}?";
  print(d.name);
  // print(d.age);
}

class Dog {
  String name;
  int age;

  Dog(this.name, this.age);

  Dog.newBorn() {
    name = "dogy";
    age = 0;
  }
}*/

main(List<String> args) {
  Pug d = new Pug.small('Duffy');
  print([d.name, d.age]);
}

class Dog {
  String name;
  int age;

  Dog(this.name, this.age);

  Dog.newBorn() {
    name = "dogy";
    age = 0;
  }
}

class Pug extends Dog {
  Pug(String name, int age)
      : super(name,
            age); // key yg mewarisi konstuktor dengan parameter nama dan umur

  Pug.small(String name) : this(name, 1);

  Pug.large(String name) : this(name, 3);
}
