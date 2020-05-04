import 'package:flutter/material.dart';
import 'package:flutter_horoscope/burc_list.dart';
import 'package:flutter_horoscope/models/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  int gelenIndex;

  BurcDetay(this.gelenIndex);

  @override
  BurcDetayState createState() {
    return new BurcDetayState();
  }
}
class BurcDetayState extends State<BurcDetay> {
  Burc secilenBurc;
  Color baskinRenk;
  PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
    secilenBurc = BurcList.tumBurclar[widget.gelenIndex];
    baskinRengiBul();
  }

  void baskinRengiBul() {
    Future<PaletteGenerator> fPaletGenerator =
    PaletteGenerator.fromImageProvider(
        AssetImage("images/" + secilenBurc.burcBuyuk));
    fPaletGenerator.then((value) {
      paletteGenerator = value;
      debugPrint(
          "secilen renk :" + paletteGenerator.dominantColor.color.toString());

      setState(() {
        baskinRenk = paletteGenerator.vibrantColor.color;
      });
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            //primary: true,
            backgroundColor: baskinRenk != null ? baskinRenk : Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi+ " Burcu ve Özellikleri"),centerTitle: true,
              background: Image.asset("images/"+secilenBurc.burcBuyuk,fit: BoxFit.cover,),
            ),


          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 15),),
              ),
            ),
          )
        ],
      ),
    );
  }


}
