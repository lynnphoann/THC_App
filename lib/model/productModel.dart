class ProductModel {
  String url;
  String productName;
  String sellerName;
  String description;
  double ratingStar;
  bool favorite;
  ProductModel({
    required this.url,
    required this.productName,
    required this.sellerName,
    required this.description,
    required this.ratingStar,
    this.favorite = false,
  });
}
