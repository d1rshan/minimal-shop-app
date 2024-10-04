import 'package:flutter/material.dart';
import 'package:minimalshop/pages/home_page.dart';
import 'package:minimalshop/pages/intro_page.dart';
import 'package:minimalshop/providers/cart_provider.dart';
import 'package:minimalshop/themes/light_mode.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        home: const IntroPage(),
        routes: {
          '/intro_page': (context) => const IntroPage(),
          '/home_page': (context) => HomePage(),
        },
      ),
    );
  }
}
