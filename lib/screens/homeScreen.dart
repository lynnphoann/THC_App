import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weed_app/dummyProductDatas.dart';
import 'package:weed_app/widgets/homeScreenItems.dart';
import '../dummyProductDatas.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyProdData = Provider.of<dummyProcuctDatas>(context);
    final dummyItems = dummyProdData.dummyItem;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5 / 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 8.0),
        itemCount: dummyItems.length,
        itemBuilder: (context, index) => ChangeNotifierProvider(
          create: (context) => dummyItems[index],
          child: homeScreenItems(
              // id: dummyProcuctDatas().dummyItem[index].id,
              // imageUrl: dummyProcuctDatas().dummyItem[index].url,
              // productName: dummyProcuctDatas().dummyItem[index].productName,
              // userName: dummyProcuctDatas().dummyItem[index].sellerName,
              ),
        ),
      ),
    );
  }
}
