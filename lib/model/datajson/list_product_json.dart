import 'package:ecommerce_app/model/datajson/abstract_jsonresource.dart';

class ListProductJson extends AbstractJsonResource {
  String? message;
  List<ProductData>? productData;

  ListProductJson({this.message, this.productData});

  ListProductJson.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['productData'] != null) {
      productData = <ProductData>[];
      json['productData'].forEach((v) {
        productData!.add(new ProductData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.productData != null) {
      data['productData'] = this.productData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductData {
  String? sId;
  String? namePro;
  String? refPro;
  int? price;
  int? qte;
  List<String>? image;
  String? subCategory;
  int? iV;

  ProductData(
      {this.sId,
      this.namePro,
      this.refPro,
      this.price,
      this.qte,
      this.image,
      this.subCategory,
      this.iV});

  ProductData.fromJson(Map<String, dynamic> json) {
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
