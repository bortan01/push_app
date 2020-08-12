import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: new Center(
          child: Text("Hola mundo"),
        ),
      ),
    );
  }
}
