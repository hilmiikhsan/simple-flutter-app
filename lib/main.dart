import 'package:flutter/material.dart';
import 'package:simple_app_login_dashboard/screen/add_product_screen.dart';
import 'package:simple_app_login_dashboard/screen/dashboard_screen.dart';
import 'package:simple_app_login_dashboard/screen/splash_screen.dart';
import 'package:simple_app_login_dashboard/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: "SThrift App",
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/login": (context) => const LoginScreen(),
        "/dashboard": (context) => const DashboardScreen(),
        "/add-product": (context) => const AddProductScreen(),
      },
    );
  }
}
