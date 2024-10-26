import 'package:flutter/material.dart';
import 'package:simple_app_login_dashboard/screen/login_screen.dart';
import 'package:simple_app_login_dashboard/screen/dashboard_screen.dart';

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
      title: "Simple App Login Dashboard",
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/dashboard": (context) => const DashboardScreen(),
      },
    );
  }
}