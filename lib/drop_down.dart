import 'package:flutter/material.dart';

void main() {
  runApp(const DropDown());
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? dropdownValue; // Nilai awal

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("DropDown"),
        ),
        body: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            hint: const Text("Pilih buah"),
            items: <String>['apel', 'mangga', 'pisang'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
              print(newValue);
            },
          ),
        ),
      ),
    );
  }
}
