import 'package:flutter/material.dart';

void main() {
  runApp(snackBarApp());
}

class snackBarApp extends StatelessWidget {
  const snackBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SncakBar'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
                content: const Text('This is a snackbar'),
                action: SnackBarAction(
                  label: 'Oke',
                  onPressed: () {},
                ));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show SnackBar')),
    );
  }
}
