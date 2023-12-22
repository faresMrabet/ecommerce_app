import 'package:ecommerce_app/model/datajson/abstract_jsonresource.dart';

class ProductJson extends AbstractJsonResource {
  String? message;
  Existingproduct? existingproduct;

  ProductJson({this.message, this.existingproduct});

  ProductJson.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    existingproduct = json['existingproduct'] != null
        ? new Existingproduct.fromJson(json['existingproduct'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.existingproduct != null) {
      data['existingproduct'] = this.existingproduct!.toJson();
    }
    return data;
  }
}

class Existingproduct {
  String? sId;
  String? namePro;
  String? refPro;
  int? price;
  int? qte;
  List<String>? image;
  String? subCategory;
  int? iV;

  Existingproduct(
      {this.sId,
      this.namePro,
      this.refPro,
      this.price,
      this.qte,
      this.image,
      this.subCategory,
      this.iV});

  Existingproduct.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    namePro = json['namePro'];
    refPro = json['refPro'];
    price = json['price'];
    qte = json['qte'];
    image = json['image'].cast<String>();
    subCategory = json['subCategory'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['namePro'] = this.namePro;
    data['refPro'] = this.refPro;
    data['price'] = this.price;
    data['qte'] = this.qte;
    data['image'] = this.image;
    data['subCategory'] = this.subCategory;
    data['__v'] = this.iV;
    return data;
  }
}
