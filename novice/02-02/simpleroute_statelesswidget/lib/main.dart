import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(new MaterialApp(
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      "/SecondPage":(BuildContext context)=>SecondPage()
    }),
  );
}

class HomePage extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Halaman Utama"),backgroundColor: Colors.deepOrangeAccent,),
      body: new Container(
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.red),
                iconSize: 70.0,
                onPressed: (){
                  Navigator.of(context).pushNamed("/SecondPage");}
              ),
              new Text("Home")
            ],
          ),
        ),
      ),
    );//Scafold
  }
}

class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second Page"),backgroundColor: Colors.deepOrange),
      body: new Container(

        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.indigo),
                iconSize: 70.0,
                onPressed: null,
              ),
              new Text("Second Page")
            ],
          ),
        ),
      ),
    );
  }
}



