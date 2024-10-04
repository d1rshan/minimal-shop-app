import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:minimalshop/pages/cart_page.dart';
import 'package:minimalshop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  static const pages = [
    ShopPage(),
    CartPage(),
  ];

  void onTabChange(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(child: pages[selectedIndex]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 8,
          activeColor: Theme.of(context).colorScheme.inversePrimary,
          color: Theme.of(context).colorScheme.inversePrimary,
          textStyle: TextStyle(
            fontFamily: 'DMSerifDisplay',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          gap: 8,
          tabBackgroundColor: Theme.of(context).colorScheme.primary,
          selectedIndex: selectedIndex,
          onTabChange: onTabChange,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
