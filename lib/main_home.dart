import 'package:flutter/material.dart';

void main() {
  runApp(const Contoh());
}

class Contoh extends StatefulWidget {
  const Contoh({super.key});

  @override
  State<Contoh> createState() => _ContohState();
}

class _ContohState extends State<Contoh> {
  int angka = 0;

  void increment() {
    setState(() {
      angka++;
    });
  }

  void decrement() {
    setState(() {
      angka--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Flutter My App")),
          backgroundColor: const Color.fromARGB(255, 85, 106, 192),
        ),
        body: Column(children: [
          Text(
            '$angka',
            style: const TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: const Icon(Icons.add),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
