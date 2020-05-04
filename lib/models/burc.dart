import 'package:flutter_horoscope/utils/strings.dart';

class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucuk;
  String _burcBuyuk;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucuk,
      this._burcBuyuk);

  String get burcBuyuk => _burcBuyuk;

  set burcBuyuk(String value) {
    _burcBuyuk = value;
  }

  String get burcKucuk => _burcKucuk;

  set burcKucuk(String value) {
    _burcKucuk = value;
  }

  String get burcDetayi => _burcDetayi;

  set burcDetayi(String value) {
    _burcDetayi = value;
  }

  String get burcTarihi => _burcTarihi;

  set burcTarihi(String value) {
    _burcTarihi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }


}