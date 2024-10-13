import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter My App"),
          backgroundColor: const Color.fromARGB(255, 57, 206, 62),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigasi ke ProfilePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            child: const Text(
                'Go to Profile Page'), // Menambahkan teks pada tombol
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: const Color.fromARGB(255, 57, 206, 62),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya
            Navigator.pop(context);
          },
          child:
              const Text('Back to Home Page'), // Menambahkan teks pada tombol
        ),
      ),
    );
  }
}
