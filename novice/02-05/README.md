
menambahkan class header


```dart
class Header extends StatelessWidget {

  Header(
    this.headerText,{
      Key key,
    } ) : super(key:key);

    GlobalKey globalKey = new GlobalKey();

    final String headerText;

    void collaps(){
        Scrollable.ensureVisible(globalKey.currentContext);
    }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: globalKey,
      onTap: collaps,
      child: Container(
      color: Colors.blue,
      child: Center(child: Text(headerText),),

      ),
      
    );
  }
}
```

<img src='kasus/livers_demystifield/img/kasus.gif' width='200'>