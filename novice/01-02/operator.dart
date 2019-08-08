import 'dart:io';

main() {
  print("PROGRAM OPERATOR");

  stdout.write("Nilai a: ");
  double a = double.parse(stdin.readLineSync()); //input nilai a
  stdout.write("Nilai b: ");
  double b = double.parse(stdin.readLineSync()); //input nilai b

  double hasil;

  hasil = a + b;
  print("$a + $b = $hasil");

  hasil = a - b;
  print("$a - $b = $hasil");

  hasil = a * b;
  print("$a * $b = $hasil");

  hasil = a / b;
  print("$a / $b = $hasil");

  hasil = a % b;
  print("$a % $b = $hasil");

  var c = 10;
  var res =
      c > 2 ? "Value greater than 10" : "value lesser than or equal to 10";
  print(res);
}
