# button_statefull

A new Flutter project.

## Getting Started

## Button Statefull Widget 

1.Membuat kelas AwesomeButton menggunakan StatefulWidget

```dart

class AwesomeButton extends StatefulWidget{
  @override
  AwesomeButtonState createState()=> new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton>{
  int counter = 0;
  List<String> strings = ["Flutter","Is","Awesome"];
  String displayedString = "";

  @override
 Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(title: new Text("Tes Statefull WIdget"),backgroundColor: Colors.deepPurple),
     body: new Container(

       child: new Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text(displayedString, style:new TextStyle(fontSize: 30.0, fontWeight:FontWeight.bold)),
             new Padding(padding: new EdgeInsets.all(15.0)),
             new RaisedButton(
               child: new Text("Press me!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic,fontSize: 20.0)),
               color: Colors.green,
               onPressed: onPressed
                           
            )
           ],
         ),
       ),
     ),
   );
 }
}
 
```

2.Menambahkan fungsi ``onPressed()`` untuk menampilkan isi dari varibel String ketika widget ``RaisedButton()`` di tap
```dart
 void onPressed(){
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter+1 : 0;
    });
  }
  ```

  output:

  <img src="img/btsfl.gif" height="450">
