# route_statefull

A new Flutter project.

## Getting Started

1.membuat kelas MyHomePage menggunkan StatefullWidget
```dart
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
```

2.MyHomePage mempunyai kelas state karena menggunakan StateFullWidget

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }
  //home
  @override
  Widget build(BuildContext context) {
    var button = new IconButton(
        icon: new Icon(Icons.access_alarm), onPressed: _onButtonPressed);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[new Text('Dog'), new Text('Cat'), button],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
  ```
  method untuk navigasi ke halaman ``MyitemPage()``
  ```dart

  void _onButtonPressed() {
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }
}

```
3.Kelas MyItemPage menggunkan StatefullWidget

```dart
class MyItemsPage extends StatefulWidget {
  MyItemsPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/MyItemsPage";

  final String title;

  @override
  _MyItemsPageState createState() => new _MyItemsPageState();
}
```
2.MyHomePage mempunyai kelas state karena menggunakan StateFullWidget

```dart
class _MyItemsPageState extends State<MyItemsPage> {
  @override
  Widget build(BuildContext context) {
    var button = new IconButton(
        icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[new Text('Item1'), new Text('Item2'), button],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }
  ```
    fungsi untuk navigasei ke widget ``context()``

  ```dart

  void _onFloatingActionButtonPressed() {}

  void _onButtonPressed() {
    Navigator.pop(context);
  }
}

```

outpout
