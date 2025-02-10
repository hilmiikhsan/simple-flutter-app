return Scaffold(
  appBar: AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.dashboard),
        SizedBox(width: 8),
        Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
    backgroundColor: Color(0xFF9B59B6),
    elevation: 4,
  ),
  body: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "Selamat datang, ",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              TextSpan(
                text: username,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Card(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Username"),
                subtitle: Text(username),
              ),
              const ListTile(
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