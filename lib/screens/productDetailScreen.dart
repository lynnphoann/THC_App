import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weed_app/dummyProductDatas.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  static String routeName = "/productDetailScreen";

  @override
  Widget build(BuildContext context) {
    final String prodcutId =
        ModalRoute.of(context)!.settings.arguments as String;
    final prodName = Provider.of<dummyProcuctDatas>(context, listen: false)
        .dummyItem
        .firstWhere((element) => element.id == prodcutId);
    return Scaffold(
      appBar: AppBar(
        title: Text(prodName.productName),
      ),
      body: Center(
        child: Text(prodName.sellerName),
      ),
    );
  }
}
