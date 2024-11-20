import 'package:flutter/material.dart';
import 'package:simple_app_login_dashboard/models/member.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final members = [
    Member(
      name: "Muhammad Ikhsan Hilmi",
      nim: "22552012003",
      imageUrl: "assets/images/me.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationIcon: const FlutterLogo(
                    size: 50,
                  ),
                  applicationName: "SThrift",
                  applicationVersion: "1.0.0",
                  applicationLegalese: "© 2024 SThrift App");
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
        title: const Text("Tentang"),
      ),
      body: Column(
        children: [
          const Text(
            "S-Thrift",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "S-Thrift adalah aplikasi yang digunakan untuk membeli dan menjual sepatu bekas. Aplikasi ini dibuat oleh saya sendiri Muhammad Ikhsan Hilmi",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Developer",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                final member = members[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(member.imageUrl),
                  ),
                  title: Text(member.name),
                  subtitle: Text(member.nim),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
