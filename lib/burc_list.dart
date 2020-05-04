import 'package:flutter/material.dart';
import 'package:flutter_horoscope/models/burc.dart';
import 'package:flutter_horoscope/utils/strings.dart';

class BurcList extends StatelessWidget {
  static List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = veriKaynagi();
    return Scaffold(
      appBar: AppBar(
        title: Text("Zodiac Sign"),
      ),
      body: listeyiHazirla(),
    );
  }

  List<Burc> veriKaynagi() {
    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      String kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";

      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
      itemCount: tumBurclar.length,
    );
  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc listeyeEklenenBurc = tumBurclar[index];
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: ()=>Navigator.pushNamed(context, "/burcDetay/$index"),

          leading: Image.asset(
            "images/" + listeyeEklenenBurc.burcKucuk,
            width: 64,
            height: 64,
          ),
          title: Text(
            listeyeEklenenBurc.burcAdi,
            style: TextStyle(fontSize: 24),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              listeyeEklenenBurc.burcTarihi,
              style: TextStyle(fontSize: 18),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.deepPurple[300],
          ),
        ),
      ),
    );
  }
}
