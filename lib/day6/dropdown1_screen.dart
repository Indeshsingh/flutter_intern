import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String dropdownValue = 'Item1';
  Color _buttonColor = Colors.black;

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
    'Item9',
    'Item10',
  ];

  void _changeButtonColor() {
    setState(() {
      if (_buttonColor == Colors.black) {
        _buttonColor = Colors.blue;
      } else if (_buttonColor == Colors.blue) {
        _buttonColor = Colors.red;
      } else if (_buttonColor == Colors.red) {
        _buttonColor = Colors.purple;
      } else {
        _buttonColor = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              iconEnabledColor: Colors.red,
              iconDisabledColor: Colors.green,
              dropdownColor: Colors.blue,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              dropdownValue == 'Item1'
                  ? 'Item1 is selected'
                  : 'Selected: $dropdownValue',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _buttonColor,
              ),
              onPressed: _changeButtonColor,
              child: const Text(
                'Click',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
