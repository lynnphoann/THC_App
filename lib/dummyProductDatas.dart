import 'package:flutter/cupertino.dart';

import 'model/productModel.dart';

class dummyProcuctDatas with ChangeNotifier {
  final List<ProductModel> _dummyProductData = [
    ProductModel(
        id: "R12345",
        url:
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.6i560szCSbpKJREmET-atgHaEo%26pid%3DApi&f=1",
        productName: "RuntZ",
        sellerName: "PhoneG",
        description: "description",
        ratingStar: 4.5),
    ProductModel(
        id: "W12345",
        url:
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.KhXnmqGb2VCC5nbVYkJgJQHaHa%26pid%3DApi&f=1",
        productName: "WhiteWidow",
        sellerName: "NaungMon",
        description: "description",
        ratingStar: 4.0),
    ProductModel(
        id: "G12345",
        url:
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.oPglqL-wNBPF9gWyt717HQHaE7%26pid%3DApi&f=1",
        productName: "GuhserStrain",
        sellerName: "NaySettHtun",
        description: "description",
        ratingStar: 3.9),
    ProductModel(
        id: "L12345",
        url:
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.explicit.bing.net%2Fth%3Fid%3DOIP.r7gq-BbMHBy1OLSdct2kjQHaHa%26pid%3DApi&f=1",
        productName: "Lemon Tree Strain",
        sellerName: "PaingG",
        description: "description",
        ratingStar: 4.1),
  ];

  List<ProductModel> get dummyItem {
    return [..._dummyProductData];
  }

  void addProduct() {
    // _dummyProductData.add(value);
    notifyListeners();
  }
}
