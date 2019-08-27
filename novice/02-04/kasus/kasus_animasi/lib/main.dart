import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Grid dan Hero",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List<Container> daftarSuperhero = new List();
var karakter = [
  {"nama": "nabila", "gambar": "1.jpeg"},
  {"nama": "nabila", "gambar": "2.jpg"},
  {"nama": "nabila", "gambar": "3.jpg"},
  {"nama": "nabila", "gambar": "4.jpg"},
  {"nama": "nabila", "gambar": "5.jpg"},
  {"nama": "nabila", "gambar": "6.jpg"},
  {"nama": "nabila", "gambar": "vv.jpg"},
];

_buatlist() async {
  for (var i = 0; i < karakter.length; i++) {
    final member = karakter[i];
    final String gambar = member["gambar"];
    daftarSuperhero.add(new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Hero(
              tag: member['nama'],
              child: new Material(
                child: new InkWell(
                  onTap: () {
                    BuildContext context;
                                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Detail(
                        nama:member['nama'],
                        gambar:gambar,
                      )));
                  },
                  child: new Image.asset(
                    "img/$gambar",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.all(10.0),
            ),
            new Text(
              member['nama'],
              style: new TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    ));
  }
}

@override
void initState() {
    _buatlist();
    super.initState();
  }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:
            new Text("Super hero", style: new TextStyle(color: Colors.white)),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: daftarSuperhero,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          new BagianIcon(),
          new Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "$nama\@gmail.com",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(
            icon: Icons.call,
            teks: "Call",
          ),
          new Iconteks(
            icon: Icons.message,
            teks: "Message",
          ),
          new Iconteks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          new Text(
            teks,
            style: new TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}


class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}

