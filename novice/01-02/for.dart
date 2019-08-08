import 'dart:io';

void main() {
  var num = 5;
  var factorial = 1;

  for (var i = num; i >= 1; i--) {
    factorial *= i;
  }
  print(factorial);
}

/* void main() {
  var num = 5;
  var factorial = 1;

  while (num >= 1) {
    factorial = factorial * num;
    num--;
  }
  print("The factorial  is ${factorial}");
} */
//for
/*main(){
  stdout.write("Jumlah perulangan: ");
  int n = int.parse(stdin.readLineSync());

  for(int i = 1; i <= n; i++){
    print("Perulangan ke-$i");
  }
}*/

/* main() {
  int i = 0;
  bool ulang = true;

  while(ulang){
    stdout.write("Apakah anda mau keluar (y/t): ");
    String jawaban = stdin.readLineSync();

    i++;
    if (jawaban.toUpperCase() == "Y") ulang = false;
  }

  print("Total perulangan: $i");

}*/

/*main() {
  int i = 0;
  bool ulang = true;

  do {
    stdout.write("Apakah anda mau keluar (y/t): ");
    String jawaban = stdin.readLineSync();

    i++;
    if (jawaban.toUpperCase() == "Y") ulang = false;
  } while(ulang);

  print("Total perulangan: $i");

}*/
