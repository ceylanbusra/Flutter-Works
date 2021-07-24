
import 'package:burc_rehberi_uygulamasi/Model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc listelenenBurc;
  const BurcDetay({required this.listelenenBurc,Key? key}) : super(key: key);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarColor =Colors.transparent;
  late PaletteGenerator _generator ;
  @override
  void initState() {
   
    super.initState();
    appBarRenginiBul();
      }
      @override
      Widget build(BuildContext context) {
        return Scaffold(body:CustomScrollView(slivers: [SliverAppBar(expandedHeight:250,
        pinned:true,
        backgroundColor: appBarColor,
        
        flexibleSpace: FlexibleSpaceBar(
          title: Text(widget.listelenenBurc.burcAdi+" Ve Özellikleri"),
        centerTitle: true,
        background:Image.asset("images/"+widget.listelenenBurc.buyukResim,fit: BoxFit.cover,)),
        ),
        SliverToBoxAdapter(
          child:Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(4),
            child: SingleChildScrollView(child: Text(widget.listelenenBurc.burcDetayi,style: Theme.of(context).textTheme.subtitle1,),))
        )
        
        
        ],),);
      }
    
      void appBarRenginiBul() async {
         _generator = await PaletteGenerator.fromImageProvider(AssetImage("images/" +widget.listelenenBurc.buyukResim));
      
         setState(() {
              appBarColor= _generator.dominantColor!.color;
         });
      }
}