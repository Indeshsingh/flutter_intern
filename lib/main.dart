import 'package:flutter/material.dart';
import 'package:flutter_intern/day1/appbar_screen.dart';
import 'package:flutter_intern/day3/pageview_screen.dart';
import 'package:flutter_intern/day4/appbar_bottomnav_screen.dart';
import 'package:flutter_intern/day4/contact_screen.dart';
import 'package:flutter_intern/day4/home_screen.dart';
import 'package:flutter_intern/day5/day5_screen.dart';
import 'package:flutter_intern/day6/dropdown_screen.dart';
import 'package:flutter_intern/day7/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Homepage',
      home: FormScreen(),
    );
  }
}
