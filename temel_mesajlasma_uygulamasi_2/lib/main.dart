import 'package:flutter/material.dart';

import 'ana_ekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Govde(),
    );
  }
}

class Govde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Temel Mesajlasma Uygulamasi"),
      ),
      body: AnaEkran(),
    );
  }
}
