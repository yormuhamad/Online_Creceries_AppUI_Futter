
import 'package:elogin/pages/AccountPage.dart';
import 'package:elogin/pages/Explore.dart';
import 'package:elogin/pages/Favorites.dart';
import 'package:elogin/pages/My_cart.dart';
import 'package:elogin/pages/home.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int _selectedIndex = 0;

  selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> sahifaho = [
  ShopePage(),
  Explore_Page(),
  CartPage(),
   FavouraitePage(),
   AccountPage(),

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: sahifaho[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory_outlined), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_off_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "Cort"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Acount"),
        ],
      ),
      );
    
  }
}
