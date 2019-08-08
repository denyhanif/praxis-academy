//insertion
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

//backward insertion
