import 'package:flutter/material.dart';

class Mensaje extends StatelessWidget {
  const Mensaje({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Center(
          child: Text("Hola mundo"),
        ),
      ),
    );
  }
}
