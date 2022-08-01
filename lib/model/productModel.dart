import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ProductModel with ChangeNotifier {
  final String id;
  final String url;
  final String productName;
  final String sellerName;
  final String description;
  final double ratingStar;
  bool favorite;
  ProductModel({
    required this.id,
    required this.url,
    required this.productName,
    required this.sellerName,
    required this.description,
    required this.ratingStar,
    this.favorite = false,
  });

  void toggleFavoriteIcon() {
    favorite = !favorite;
    notifyListeners();
  }
}
