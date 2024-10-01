import 'package:flutter/material.dart';
import 'package:tea/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text(
        "Shop screen",
        style: TextStyle(color: Colors.black),
      ),
    ),
    const Center(
      child: Text(
        "Favourite screen",
        style: TextStyle(color: Colors.black),
      ),
    ),
    const Center(
      child: Text(
        "Notifaction screen",
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1d2630),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(
              Icons.shopify,
              color: index == 1 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Favourite",
            icon: Icon(
              Icons.favorite,
              color: index == 2 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Notifactions",
            icon: Icon(
              Icons.notification_add,
              color: index == 3 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
