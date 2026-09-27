import 'package:flutter/material.dart';
import 'package:app_3/feature/cart/cart.dart';
import 'package:app_3/feature/shop/shop.dart';
import 'package:app_3/feature/Explore/Explore.dart';
import 'package:app_3/feature/account/account.dart';
import 'package:app_3/core/utils/app_colors.dart';
import 'package:app_3/feature/favourite/favourite.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const Shop(),
    const Explore(),
    const Cart(),
    const Favourite(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.blackColor,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}