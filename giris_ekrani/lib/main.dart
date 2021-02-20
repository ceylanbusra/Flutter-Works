import 'package:flutter/material.dart';
import 'package:giris_ekrani/Screen/NumberPassworldScreen.dart';

import 'Screen/LoginScreen.dart';
import 'Screen/VeriGonderme.dart';
import 'Screen/eMailPassworld.dart';
import 'Screen/home.dart';
import 'Screen/home2.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/LoginScreen': (context) => LoginScreen(),
      '/NumberPassworldScreen': (context) => NumberPassworld(),
      '/eMailPassworld': (context) => eMailPassworld(),
      '/Homee': (context) => Homee(),
      '/VeriGonderme': (context) => VeriGonderme(),
      '/Home2': (context) => Home2(),
    },
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
