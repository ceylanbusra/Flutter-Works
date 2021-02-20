import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: VeriGonderme()));
}

class VeriGonderme extends StatefulWidget {
  @override
  _VeriGondermeState createState() => _VeriGondermeState();
}

class _VeriGondermeState extends State<VeriGonderme> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(hintColor: Colors.blue),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            actions: [Text("Ana sayfa ve statefull")],
          ),
          body: Container(
              color: Color(0xffEFF4F8),
              width: MediaQuery.of(context).size.width * 100,
              height: MediaQuery.of(context).size.height * 100,
              child: Column(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        validator: _eMailKontrol,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "E mail",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          validator: _ParolaKontrol,
                          decoration: InputDecoration(
                            hintText: "Parola",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }

  String _eMailKontrol(String mail) {
    if (!mail.contains("@"))
      return 'gecersiz E-mail';
    else
      return null;
  }

  // ignore: missing_return
  // ignore: non_constant_identifier_names
  String _ParolaKontrol(String parola) {
    if (parola == "BusraCeylan")
      return 'Dogru sifre';
    else
      return null;
  }
}
