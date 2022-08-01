import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weed_app/model/productModel.dart';
import 'package:weed_app/screens/productDetailScreen.dart';

class homeScreenItems extends StatelessWidget {
  // final String id;
  // final String imageUrl;
  // final String productName;
  // final String userName;
  // const homeScreenItems({
  //   Key? key,
  //   required this.id,
  //   required this.imageUrl,
  //   required this.productName,
  //   required this.userName,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyitem = Provider.of<ProductModel>(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailScreen.routeName,
            arguments: dummyitem.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: GridTile(
          child: Image.network(
            dummyitem.url,
            fit: BoxFit.cover,
          ),
          footer: SizedBox(
            height: 50,
            child: GridTileBar(
              backgroundColor: const Color.fromARGB(190, 41, 71, 57),
              title: Text(dummyitem.productName),
              subtitle: Text(dummyitem.sellerName),
              trailing: IconButton(
                icon: Icon(dummyitem.favorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined),
                color: Colors.lightGreenAccent,
                onPressed: () {
                  dummyitem.toggleFavoriteIcon();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
