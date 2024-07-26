import 'package:flutter/material.dart';

import 'package:flutter_intern/day4/chat_screen.dart';
import 'package:flutter_intern/day4/contact_screen.dart';
import 'package:flutter_intern/day4/details_screen.dart';
import 'package:flutter_intern/day4/home_screen.dart';
import 'package:flutter_intern/day4/library_screen.dart';
import 'package:flutter_intern/day4/search_screen.dart';

class AppbarBottomnavScreen extends StatefulWidget {
  const AppbarBottomnavScreen({super.key});

  @override
  State<AppbarBottomnavScreen> createState() => _AppbarBottomnavScreenState();
}

class _AppbarBottomnavScreenState extends State<AppbarBottomnavScreen> {
  int _selectedIndex = 0;

  // ignore: non_constant_identifier_names
  final List<Widget> _Pages = [
    const HomeScreen(),
    const LibraryScreen(),
    const SearchScreen(),
    const ContactScreen(),
    const ChatScreen(),
    const DetailsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: Image.asset('assets/pracas.png'),
        title: const Text('PRACAS Infosys'),
        centerTitle: true,
        actions: [
          ClipOval(
            child: SizedBox(
              width: 35,
              height: 35,
              child: Image.asset('assets/indesh.jpg'),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
        selectedItemColor: Colors.blue,
        selectedFontSize: 15,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_emergency), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _Pages,
      ),
    );
  }
}
