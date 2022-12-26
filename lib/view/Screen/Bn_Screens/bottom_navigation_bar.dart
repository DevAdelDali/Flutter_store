import 'package:flutter/material.dart';
import 'package:store/view/Screen/Bn_Screens/favorite.dart';

import 'package:store/view/Screen/Bn_Screens/home_screen.dart';
import 'package:store/view/Screen/Bn_Screens/profile_screen.dart';

import '../../../generated/l10n.dart';
import 'cart.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentPage = 0;
  static List<Widget> pages = <Widget>[
    const HomeScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            child: BottomNavigationBar(
                currentIndex: currentPage,
                onTap: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    label: S.of(context).home,
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: S.of(context).cart,
                    icon: Icon(Icons.shopping_cart),
                  ),
                  BottomNavigationBarItem(
                    label: S.of(context).favorite,
                    icon: Icon(Icons.favorite),
                  ),
                  BottomNavigationBarItem(
                    label: S.of(context).profile,
                    icon: Icon(Icons.person),
                  ),
                ]),
          ),
        ),
        body: pages[currentPage],
      ),
    );
  }
}
