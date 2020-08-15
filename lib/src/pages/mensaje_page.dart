import 'package:flutter/material.dart';

class Mensaje extends StatelessWidget {
  const Mensaje({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String arg = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: new AppBar(
        title: Text("PAGE MENSAJE"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: new Center(
          child: Text(arg ?? "NO DAY INFORMACION"),
        ),
      ),
    );
  }
}
