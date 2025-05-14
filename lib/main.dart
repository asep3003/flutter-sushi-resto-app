import 'package:flutter/material.dart';
import 'package:flutter_sushi_restaurant_app/models/shop.dart';
import 'package:flutter_sushi_restaurant_app/pages/cart_page.dart';
import 'package:flutter_sushi_restaurant_app/pages/intro_page.dart';
import 'package:flutter_sushi_restaurant_app/pages/menu_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
