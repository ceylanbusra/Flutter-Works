import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListKonu extends StatelessWidget {
  //Ogrenci tipinde ogrenci nesnelerini barındıracak ogrenci listesi olusturduk.
  List<Ogrenci> tumOgrenciler = [];
  @override
  Widget build(BuildContext context) {
    // burada çağırmamızın amacı buildden sonra verileri  almak
    OgrenciVerileriniGetir();
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => Card(
        color: index % 2 == 0 ? Colors.orange[300] : Colors.blue[200],
        elevation: 6,
        child: ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.add),
          title: Text(
            tumOgrenciler[index]._isim,
          ),
          subtitle: Text(tumOgrenciler[index]._aciklama),
        ),
      ),
      itemCount: 20,
    );
  }

  // ignore: non_constant_identifier_names
  void OgrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adi", "Ogrenci $index aciklamasi",
            index % 2 == 0 ? true : false));
  }
}

class Ogrenci {
  //Bu classı oluşturmaktaki amaç buradaki verileri kullanmak
  //Private tanımlanan değerler
  String _isim;
  String _aciklama;
  bool _cinsiyet;
  //Kurucu metod
  Ogrenci(this._aciklama, this._isim, this._cinsiyet);
}
