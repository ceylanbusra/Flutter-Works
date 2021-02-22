import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController deger = TextEditingController();
  List mesajlar = [];
  mesajlariAl() {
    setState(() {
      mesajlar.add(deger.text);
      deger.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
                itemCount: mesajlar.length,
                itemBuilder: (context, index) => Card(
                      color: Colors.cyan[300],
                      elevation: 8,
                      child: ListTile(
                        leading: Icon(Icons.message),
                        title: Text(mesajlar[index]),
                      ),
                    )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Mesaj yazınız"),
              controller: deger,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.06,
            child: RaisedButton(
              color: Colors.amber,
              onPressed: mesajlariAl,
              child: Text("Gönder"),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
