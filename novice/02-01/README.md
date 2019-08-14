

### Menambahkan Library 
Menambahkan Library english english_words: ^3.1.0  ke daftar dependensi

```dart
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  english_words: ^3.1.0
}
```


Di dalam lib/main.dart , tambahkan import package baru

````import 'package:english_words/english_words.dart';```

menambahkan statefull widget
```dart
class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
}```





### 2.MAP 

menggunnakan kata kunci contoh ["sekolah":"praxis"] 
perbedaa dengan list yaitu: map tidak untuk data yng berurutan
dekalarsi map menggunakan {}


### 3.SET 

mirip list set tidak memiliki urutan, datanya bersifat unik


### 4.Generic
ra usable variabel
bisa menyipan berbeda tipe data

Pemrograman generik  adalah gaya  pemrograman komputer  di mana  algoritma  ditulis dalam bentuk  tipe yang  akan ditentukan yang kemudian  dipakai  saat dibutuhkan untuk jenis tertentu yang disediakan sebagai  parameter .generic programming memungkinkan penulisan fungsi  atau  tipe  data berbeda dalam rangkaian tipe yang mereka operasikan saat digunakan, sehingga mengurangi  duplikasi .


contoh sintaks class
```dart
 class GenericStack<T>;
{
  private stack: T[]; 
  function pushItem(item: T) { 
  this.stack.push(item); 
  }
}
```
contoh sintaks untuk tipedata
```dart
var numberStack = GenericStack<Number>(); 
var stringStack = GenericStack<String>(); 
var aString = "A String"; 
var aNumber = 100; 
var aPerson = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};

// These will pass the typescript compiler
stringStack.pushItem(aString); 
numberStack.pushItem(aNumber);

// But these would all fail.
numberStack.pushItem(aPerson);
numberStack.pushItem(aString);
stringStack.pushItem(aPerson);
stringStack.pushItem(aNumber);
```