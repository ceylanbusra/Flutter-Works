import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Homee()));
}

// ignore: camel_case_types
class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(hintColor: Colors.blue),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color(0xffEFF4F8),
          width: MediaQuery.of(context).size.width * 100,
          height: MediaQuery.of(context).size.height * 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(children: [
              Container(
                width: 180,
                height: 180,
                child: Image(
                  image: AssetImage("lib/Assets/Image/book.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "Home ",
                  style: TextStyle(fontSize: 18, color: Color(0xff08005e)),
                ),
              ),
              Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: "E mail",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.06,
                child: RaisedButton(
                  onPressed: () {
                    debugPrint("e mail");
                    Navigator.pushNamed(context, "/VeriGonderme");
                  },
                  child: Text(
                    "Devam et",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xff23ACCC),
                  elevation: 20,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
