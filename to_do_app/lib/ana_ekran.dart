import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  // textFielddan gelen text değerleri alıp buradaki deger nesnesinde tutuyoruz..
  TextEditingController deger = TextEditingController();
  List alisverisListesi = [];
  //eleman ekleme fonksiyonu
  elemanEkle() {
    setState(() {
      alisverisListesi.add(deger.text);
      deger.clear();
    });
  }

//Eleman cikarma fonksiyonu
  elemanCikar() {
    setState(() {
      alisverisListesi.remove(deger.text);
      deger.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              itemCount: alisverisListesi.length,
              itemBuilder: (context, index) => Card(
                elevation: 8,
                color: Colors.purple[200],
                child: ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text(alisverisListesi[index]),
                  subtitle: Text("Alınacak-Yapılacaklar"),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  height: 4,
                );
              },
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "eklemek ya da çıkarmak istediğin öğeyi yaz.",
              border: OutlineInputBorder(),
            ),
            // textFielddaki degeri alıyor.
            controller: deger,
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text("Ekle"),
            color: Colors.amber,
            elevation: 20,
            onPressed: elemanEkle,
          ),
          RaisedButton(
            onPressed: elemanCikar,
            child: Text("Cikar"),
            color: Colors.amber,
            elevation: 20,
          ),
        ],
      ),
    );
  }
}
