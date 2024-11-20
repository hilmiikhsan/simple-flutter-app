import 'package:flutter/material.dart';
import 'package:simple_app_login_dashboard/screen/about_screen.dart';
import 'package:simple_app_login_dashboard/screen/product_screen.dart';
import 'package:simple_app_login_dashboard/screen/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final pages = [
    const ProductScreen(),
    const ProfileScreen(),
    const AboutScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: "Produk",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Tentang",
          )
        ],
      ),
      body: IndexedStack(index: _selectedIndex, children: pages),
    );
  }
}
