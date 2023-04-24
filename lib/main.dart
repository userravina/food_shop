import 'package:addvance_practice/cart_app/Provider/producte_provider.dart';
import 'package:addvance_practice/cart_app/view/Detail_Screen.dart';
import 'package:addvance_practice/cart_app/view/Home_Screen.dart';
import 'package:addvance_practice/cart_app/view/SplasScreen.dart';
import 'package:addvance_practice/cart_app/view/bottom_bar.dart';
import 'package:addvance_practice/cart_app/view/cart_Screen.dart';
import 'package:addvance_practice/count_app/Provider/create_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'count_app/View/Home_Screen.dart';

void main() {
  runApp(
    MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => Produte(),)
     ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash_screen',
        routes: {
          '/': (context) => Bottom(),
          'Home': (context) => Home_Screen(),
          'splash_screen': (context) => Splash(),
          'detail': (context) => Detail(),
          'cart': (context) => Cart(),
        },
      ),
    ),
  );
}
