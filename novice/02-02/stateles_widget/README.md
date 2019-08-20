# stateles_widget

A new Flutter project.

## Getting Started


1. Membuat kelas ``MyStatelessWidget()`` dengan  StatelessWidget , 

```dart
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    //Scaffold provide functionality of appbar, body of app etc
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateless Widget")),
      body: new Container(
        //adding padding around card
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // new Text("Hey"),
            // new Text("My name"),
            // new Text("Is Raunak")

            new MyCard(
              title: new Text("I love Flutter", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
            ),
            new MyCard(
              title: new Text("I love Donuts", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.donut_large, size: 40.0, color: Colors.brown)
            ),
            new MyCard(
              title: new Text("I see you", style: new TextStyle(fontSize: 20.0)),
              icon: new Icon(Icons.visibility, size: 40.0, color: Colors.blue)
            )
          ]
        )
      )
    );
  }
}
```

2. membuat class MyCard untuk menambahkan pading pada widget MyCard()
```dart
class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return new Container(
      //adding bottom padding on card
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          //adding padding inside card
          padding: new EdgeInsets.all(15.0),
          child: new Column(
          children: <Widget>[
              // new Text("I love Flutter"),
              // new Icon(Icons.favorite)

              this.title,
              this.icon
            ]
          )
        )
        
      )
    );
  }
}

```
output:





