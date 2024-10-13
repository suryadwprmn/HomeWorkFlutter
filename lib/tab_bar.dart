import 'package:flutter/material.dart';

void main() {
  runApp(MyTabBarApp());
}

class MyTabBarApp extends StatelessWidget {
  const MyTabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Example'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
                Tab(icon: Icon(Icons.directions_boat), text: 'Boat'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Car Tab')),
              Center(child: Text('Bike Tab')),
              Center(child: Text('Boat Tab')),
            ],
          ),
        ),
      ),
    );
  }
}
