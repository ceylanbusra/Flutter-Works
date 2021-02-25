import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController deger1 = new TextEditingController();

  List<MesajKutusu> mesajlarListesi = [];

//Burası butona basıldığında mesaj nesnesi üretip listeye ekliyor.
  listeyeEkle(String deger) {
    setState(() {
      //Her text yazıldığında ve gonder butonuna basıldığında bu tetiklenecek ve her mesajda nesne oluşturacak o classtan.
      MesajKutusu mesaj1 = new MesajKutusu(mesaj: deger);
      mesajlarListesi.add(mesaj1);
      deger1.clear();
    });
  }

  // ignore: non_constant_identifier_names
  Widget TextAlani() {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Mesaj yazınız..", fillColor: Colors.amber),
              controller: deger1,
            ),
          ),
          IconButton(
            onPressed: () => listeyeEkle(deger1.text),
            icon: Icon(Icons.send_rounded),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: mesajlarListesi.length,
                  itemBuilder: (BuildContext context, index) => Card(
                    borderOnForeground: true,
                    color: Colors.purple[300],
                    elevation: 8,
                    child: ListTile(
                      //title: index % 2 == 0 ? isimler[0] : isimler[1],
                      subtitle: mesajlarListesi[index],
                    ),
                  ),
                )),
          ),
          Divider(
            thickness: 2,
          ),
          TextAlani(),
        ],
      ),
    );
  }
}

List isimler = ["Ayse", "Fatma"];

// Her bir mesajın kemiği burası
// ignore: must_be_immutable
class MesajKutusu extends StatelessWidget {
  String mesaj;
  MesajKutusu({this.mesaj}) {
    print("burasi constructor metottur. İlk bu tetiklenir.");
  }
  // Burası da mesaj kutusunun tasarımının bel kemiğidir.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(Icons.message_rounded),
          ),
          Column(
            children: <Widget>[
              Text(isimler[0]),
              Text(mesaj),
            ],
          )
        ],
      ),
    );
  }
}
