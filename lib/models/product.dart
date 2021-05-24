/// id : 1
/// name : "Product1"
/// price : 35.0

class Product {
  int _id;
  String _name;
  double _price;

  int get id => _id;
  String get name => _name;
  double get price => _price;

  Product({
      int id, 
      String name, 
      double price}){
    _id = id;
    _name = name;
    _price = price;
}

  Product.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _price = json["price"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["price"] = _price;
    return map;
  }

}