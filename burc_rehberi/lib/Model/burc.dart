
class Burc{
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _buyukResim;
  final String _kucukResim;
  get burcAdi => this._burcAdi;

 

  get burcTarihi => this._burcTarihi;

 

  get burcDetayi => this._burcDetayi;


  get buyukResim => this._buyukResim;



  get kucukResim => this._kucukResim;



  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._buyukResim, this._kucukResim); 
  @override
  String toString() {
  return "Burcun Adı {$_burcAdi} burcun buyuk resmi {$_buyukResim}";
   }

}