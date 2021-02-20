import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoginScreen()));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffEFF4F8),
        width: MediaQuery.of(context).size.width * 100,
        height: MediaQuery.of(context).size.height * 100,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(
                width: 180,
                height: 180,
                child: Image(
                  image: AssetImage("lib/Assets/Image/book.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Hoş geldiniz",
                  style: TextStyle(
                      color: Color(0xff08005e),
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Text(
                "Devam etmek için oturum açın",
                style: TextStyle(color: Color(0xff08005e), fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, "/NumberPassworldScreen");
                          debugPrint("Busra Ceylan");
                        },
                        child: Text("Cep telefonu numarası ile oturum açın"),
                        textColor: Colors.white,
                        color: Color(0xff23ACCC),
                        elevation: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Veya",
                      style: TextStyle(color: Color(0xff08005e), fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: RaisedButton(
                        onPressed: () {
                          debugPrint("Busra Ceylan");
                          Navigator.pushNamed(context, "/Homee");
                        },
                        child: Text("e posta ile oturum Açın"),
                        textColor: Colors.white,
                        color: Color(0xff23ACCC),
                        elevation: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
