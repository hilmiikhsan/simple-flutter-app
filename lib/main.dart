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
        primarySwatch: Colors.purple, // Set a primary color for the app
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black54),
        ),
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