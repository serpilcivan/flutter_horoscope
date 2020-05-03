import 'package:flutter/material.dart';
import 'package:flutter_horoscope/burc_detay.dart';
import 'package:flutter_horoscope/burc_list.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burc Rehberi",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: BurcList()
    );
  }
}
