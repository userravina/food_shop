import 'package:addvance_practice/cart_app/view/Detail_Screen.dart';
import 'package:addvance_practice/cart_app/view/Home_Screen.dart';
import 'package:addvance_practice/cart_app/view/cart_Screen.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        bottomNavigationBar:  BottomNavigationBar(
          currentIndex: i,type: BottomNavigationBarType.shifting,
          onTap: (value) {
            setState(() {
              i=value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded,size: 30),label: "",activeIcon: Icon(Icons.grid_view_rounded,size: 30,)),
            BottomNavigationBarItem(icon: Icon(Icons.person,size: 30),label: "",activeIcon: Icon(Icons.person,size: 30,)),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart,size: 30),label: "",activeIcon: Icon(Icons.add_shopping_cart,size: 30,)),
          ],
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.black12,
        ),
        body: IndexedStack(
          index: i,
          children: [
            Home_Screen(),
            Home_Screen(),
            Cart(),
          ],
        ),
      ),
    );
  }
}
