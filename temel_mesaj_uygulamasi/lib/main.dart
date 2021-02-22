import 'package:flutter/material.dart';

import 'ana_ekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "İlkel mesajlaşma Uygulaması",
      home: Govde(),
    );
  }
}

class Govde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 10,
        title: Text(
          "İlkel mesajlaşma Uygulaması",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: AnaEkran(),
    );
  }
}
