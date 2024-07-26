import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String personFullName;
  final String personAge;
  final String personAddress;
  final String personImage;

  const DetailScreen(
      {super.key,
      required this.personFullName,
      required this.personAddress,
      required this.personAge,
      required this.personImage});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(widget.personImage),
            Text("Person name is: ${widget.personFullName}"),
            Text("Person age is: ${widget.personAge}"),
            Text("Person address is: ${widget.personAddress}"),
          ],
        ),
      ),
    );
  }
}
