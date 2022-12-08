import 'package:flutter/material.dart';
import 'package:store/view/Screen/Bn_Screens/home_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentPage = 0;
  static List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (int index) {
              setState(() {
                currentPage = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(Icons.shopping_cart),
              ),
              BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person),
              ),
            ]),
        body: pages[currentPage],
      ),
    );
  }
}
