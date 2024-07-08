import 'package:fabric_store/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    //list of products for sale

    //product 1
    Product(
      name: "YAZOLE 332",
      price: 1098,
      description:
          "leather large dial business waterproof luminous fashion quartz watch for men",
      imagePath: 'assets/yazlo.png',
    ),

    //product 2
    Product(
      name: "Fossil Men's Grant - FS4736",
      price: 2339.40,
      description:
          "This 44mm Grant features a black dial, chronograph movement and stainless steel bracelet.",
      imagePath: 'assets/stainless.jpg',
    ),

    //product 3
    Product(
      name: "EMPORIO ARMANI",
      price: 40790.14,
      description:
          "Model: AR5890 \nWarranty: 2 Years \nCase: Stainless Steel/Rose Gold",
      imagePath: 'assets/brown.png',
    ),

    //product 4
    Product(
      name: "G GALLANT",
      price: 8085,
      description:
          "Men's Wristwatch Quartz Watch Nylon Slip-Thru Strap Watch Minimalist",
      imagePath: 'assets/gallant.jpg',
    ),
  ];

//user cart
  final List<Product> _cart = [];

//get product list
  List<Product> get shop => _shop;

//get user cart
  List<Product> get cart => _cart;

//adding item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

//remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
