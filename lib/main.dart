import 'package:flutter/material.dart';
import 'package:flutter_horoscope/burc_detay.dart';
import 'package:flutter_horoscope/burc_list.dart';
//import 'package:flutter_horoscope/testlib.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burc Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/": (context) => BurcList(),
        "/burcListesi": ( context) => BurcList(),

      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");
        if (pathElemanlari[1] == 'burcDetay') {
          return MaterialPageRoute(
              builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      theme: ThemeData(primarySwatch: Colors.deepPurple),

    );
  }
}
