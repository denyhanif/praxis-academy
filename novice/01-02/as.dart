import 'dart:io';

/*void main(List<String> args) {
  print("tuliskan nama:");

  String nama = stdin.readLineSync();
  print("halo.${nama}");
  print('selesai');
}*/

//stdin:menunggu inputan
//ansychronous di jalankan pada scope , terpisah dari scope a
// main() {
//   List T = [6, 2, 3, 66, 3];

//   for (var i = 0; i < T.length; i++) {
//     var key = T[i];
//     var j = i;
//     while (j > 0 && T[j - 1] > key) {
//       T[j] = T[j - 1];
//       j = j - 1;
//     }
//     T[j] = key;
//   }
//   print(T);
// }

// main() {
//   var T = [1, 5, 3, 6, 2, 10];
//   int j, i, key;
//   for (int i = 1; i < T.length; i++) {
//     j = i;
//     while (j >= 0 && T[j - 1] > key) {
//       T[j] = T[j - 1];
//       T[j - 1] = key;
//       j--;
//     }
//   }
//   print(T);
// }

main(List<String> args) {
  var T = [1, 5, 3, 6, 2, 10];

  for (int i = 0; i < T.length; i++) {
    int j = i;
    while (j > 0) {
      if (T[j] < T[j - 1]) {
        int key = T[j];
        T[j] = T[j - 1];
        T[j - 1] = key;
      }
      j--;
    }
  }
  print(T);
}
