import 'package:flutter/material.dart';
import 'package:listeler_ornegi/ListKonu.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/ListKonu': (context) => ListKonu(),
    },
    debugShowCheckedModeBanner: false,
    title: "Listeleri Öğrenme",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Öğrenciler listesi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListKonu(),
    ),
  ));
}
