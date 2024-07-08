// ignore_for_file: prefer_const_constructors

import 'package:fabric_store/Components/drawer.dart';
import 'package:fabric_store/Components/product_tile.dart';
import 'package:fabric_store/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
        actions: [
          //go to cart button
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          const SizedBox(height: 25),
          //shop sub title
          Center(
              child: Text("Pick from a selected list of premium products",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ))),

          //shop products
          SizedBox(
            height: 550,
            child: ListView.builder(
                itemCount: Products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  //get each indivisual from the shop
                  final product = Products[index];

                  //return it a a product title UI
                  return MyProductTile(product: product);
                }),
          ),
        ],
      ),
    );
  }
}
