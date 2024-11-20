import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/me.png"),
            radius: 50,
          ),
          const Text(
            "Muhammad Ikhsan Hilmi",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("ikhsanhilmimuhammad@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Nomor Telepon"),
                    subtitle: Text("087785110345"),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/login", (route) => false);
            },
            child: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}
