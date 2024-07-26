import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/indesh.jpg'),
            const Text('Name : Indesh Singh'),
            const Text('Address : Biratnagar')
          ],
        ),
      ),
    );
  }
}
