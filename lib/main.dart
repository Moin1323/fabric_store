// ignore_for_file: prefer_const_constructors

import 'package:fabric_store/models/shop.dart';
import 'package:fabric_store/pages/Shop_page.dart';
import 'package:fabric_store/pages/cart_page.dart';
import 'package:fabric_store/pages/intro_page.dart';
import 'package:fabric_store/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
