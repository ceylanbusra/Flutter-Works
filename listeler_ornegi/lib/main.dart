import 'package:flutter/material.dart';

import 'ListeKonuPekistirme.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/ListView': (context) => ListView(),
    },
    debugShowCheckedModeBanner: false,
    title: "Listeleri Öğrenme",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Sanal Kitaplık",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListeKonuPekistirme(),
    ),
  ));
}
