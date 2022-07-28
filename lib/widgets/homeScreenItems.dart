import 'package:flutter/material.dart';
import 'package:weed_app/screens/productDetailScreen.dart';

class homeScreenItems extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String userName;
  const homeScreenItems({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.pushNamed(context, ProductDetailScreen.routeName,
            arguments: userName);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: GridTile(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          footer: SizedBox(
            height: 50,
            child: GridTileBar(
              backgroundColor: Color.fromARGB(190, 41, 71, 57),
              title: Text(productName),
              subtitle: Text(userName),
              trailing: Icon(Icons.favorite_border_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
