import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CustomLogin(), 
      ),
    );
  }
}

class CustomLogin extends StatelessWidget {
  const CustomLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Membungkus Column agar bisa di-scroll jika melebihi layar
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: TextField(
              obscureText: true, // Untuk input password yang disembunyikan
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              style: TextButton.styleFrom(
                // Menambahkan ButtonStyle di sini
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                print('Sign In button pressed');
              },
              child: const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              )),
        ],
      ),
    );
  }
}
