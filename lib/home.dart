import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 220, 202, 149),
          appBar: AppBar(
            title: const Center(child: Text("Flutter My App")),
            backgroundColor: const Color.fromARGB(255, 57, 206, 62),
          ),
          body: const Center(
            child: Text(
              "Lorem ipsum dolor sit a met asawawawawawawasasaswewededwdfgfgtetr24r34e4434324324242342343",
              maxLines: 2,
            ),
          ),
        ));
  }
}
