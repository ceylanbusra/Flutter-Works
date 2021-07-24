
import 'package:burc_rehberi_uygulamasi/Utils/strings.dart';
import 'package:flutter/material.dart';
import '../../Model/burc.dart';
import 'burc_item.dart';


class BurclarListesi extends StatelessWidget {
  //Bu boşta olsa ve diğer tum her yerden erişilmesi adına burada tanımlı
 late   List<Burc> tumBurclar;
  BurclarListesi(){
    //bu constructor oluşturulduğunda tetiklenmesi ve içinin dolması için burada tanımlandı.
    tumBurclar = [];
    tumBurclar =veriKaynagiHazirlama();
   print(tumBurclar);
      }
    
        
      
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text("Burclar Listesi"),),
            body: ListView.builder(itemBuilder: (context,index){return BurcItem(listelenenBurc: tumBurclar[index]);},itemCount: tumBurclar.length)
          );
        }
    
      List<Burc> veriKaynagiHazirlama() {
        List<Burc> geciciListe =[];
        for(int i=0;i<12;i++){
          String burcAdi = Strings.BURC_ADLARI[i];
          String burcTarihi= Strings.BURC_TARIHLERI[i];
          String burcDetayi= Strings.BURC_GENEL_OZELLIKLERI[i];
          String kucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png"; //Koc-->koc-->koc1.png
          String buyukResim = Strings.BURC_ADLARI[i].toLowerCase() +
          "_buyuk" +
          "${i + 1}.png"; //Koc->koc_buyuk1.png
          //Burada her bir burc için nesne oluşturuluyor ve özellikleri for döngüsüyle listeye çekiliyor.
          Burc eklenecekBurc = Burc(burcAdi,burcTarihi,burcDetayi,buyukResim,kucukResim);
          geciciListe.add(eklenecekBurc);
        }
        return geciciListe;
      }
  }
  
  