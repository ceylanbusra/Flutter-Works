
import 'package:burc_rehberi_uygulamasi/Model/burc.dart';
import 'package:flutter/material.dart';

import 'burc_detay.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 6,
        child: ListTile(leading: Image.asset("images/"+listelenenBurc.kucukResim,),
        title:Text(listelenenBurc.burcAdi,style: myTextStyle.headline6,),
        subtitle: Text(listelenenBurc.burcTarihi,style: myTextStyle.subtitle2),
        trailing: Icon(Icons.arrow_forward_ios,color:Colors.indigo),onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(listelenenBurc: listelenenBurc)));})),
    );
  }
}