import 'package:flutter/material.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Title")),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                for (int row = 0; row < 5; row++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int column = 0; column < 3; column++)
                        SizedBox(
                          width: 121,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 160,
                                width: 121,
                                child: Image.asset(
                                  "assets/img/image-1.png",
                                ),
                              ),
                              const Text(
                                "Title",
                                style: TextStyle(color: Colors.black),
                              ),
                              const Text(
                                "Updated yesterday",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        )
                    ],
                  )
              ],
            ),
          ),
        ));
  }
}
