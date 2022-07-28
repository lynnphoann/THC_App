import 'package:flutter/material.dart';
import 'package:weed_app/DummyData.dart';
import 'package:weed_app/widgets/homeScreenItems.dart';
import '../DummyData.dart';
import '../model/productModel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5 / 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 8.0),
        itemCount: Dummy_prodcut_model.length,
        itemBuilder: (context, index) => homeScreenItems(
          imageUrl: Dummy_prodcut_model[index].url,
          productName: Dummy_prodcut_model[index].productName,
          userName: Dummy_prodcut_model[index].sellerName,
        ),
      ),
    );
  }
}
