import 'package:flutter/material.dart';

import 'ana_ekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basit to do app",
      home: Govde(),
    );
  }
}

class Govde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit to do app  Uygulaması"),
      ),
      body: AnaEkran(),
    );
  }
}
