import 'package:flutter/material.dart';
import 'package:flutter_intern/day1/appbar_screen.dart';
import 'package:flutter_intern/day3/pageview_screen.dart';
import 'package:flutter_intern/day4/appbar_bottomnav_screen.dart';
import 'package:flutter_intern/day4/home_screen.dart';
import 'package:flutter_intern/day5/day5_screen.dart';
import 'package:flutter_intern/day6/dropdown1_screen.dart';
import 'package:flutter_intern/day7/form_screen.dart';
import 'package:flutter_intern/day8/sharedprefence_screen.dart';
import 'package:flutter_intern/day9/validatorform_screen.dart';

// Import all your screens here

class Dropdown2Screen extends StatefulWidget {
  const Dropdown2Screen({super.key});

  @override
  _Dropdown2ScreenState createState() => _Dropdown2ScreenState();
}

class _Dropdown2ScreenState extends State<Dropdown2Screen> {
  List<String> days = [
    'day1',
    'day2',
    'day3',
    'day4',
    'day5',
    'day6',
    'day7',
    'day8',
    'day9',
  ];

  String? selectedDay;

  final Map<String, Widget Function(BuildContext)> dayScreenMap = {
    'day1': (context) => const AppbarScreen(),
    'day2': (context) => const AppbarBottomnavScreen(),
    'day3': (context) => const PageviewScreen(),
    'day4': (context) => const HomeScreen(),
    'day5': (context) => const Day5Screen(),
    'day6': (context) => const Dropdown1Screen(),
    'day7': (context) => const FormScreen(),
    'day8': (context) => const SharedprefenceScreen(),
    'day9': (context) => const ValidatorformScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Dropdown'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Select a day',
              ),
              readOnly: true,
              onTap: _showDropdownMenu,
              controller: TextEditingController(text: selectedDay),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {
                if (selectedDay != null &&
                    dayScreenMap.containsKey(selectedDay)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: dayScreenMap[selectedDay]!,
                    ),
                  );
                }
              },
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDropdownMenu() async {
    String? selected = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: days.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(days[index]),
                  onTap: () {
                    Navigator.of(context).pop(days[index]);
                  },
                );
              },
            ),
          ),
        );
      },
    );

    if (selected != null) {
      setState(() {
        selectedDay = selected;
      });
    }
  }
}

// Sample screens for demonstration purposes
class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Screen'),
      ),
      body: const Center(
        child: Text('AppBar Screen Content'),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: const Center(
        child: Text('Detail Screen Content'),
      ),
    );
  }
}

// Add the rest of your screen classes here (PageViewScreen, HomeScreen, etc.)
