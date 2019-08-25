import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "contoh Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Container(
        
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
          return ;
         },
        ),

      ),
    );
  }
}
