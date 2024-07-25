import 'package:flutter/material.dart';
import 'package:flutter_intern/helpers/apphelper.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: AppHelpers.personFullname.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(AppHelpers.personImage[index]),
              Text(AppHelpers.personFullname[index]),
              Text(AppHelpers.personAge[index]),
              Text(AppHelpers.personAddress[index]),
            ],
          );
        },
      ),
    );
  }
}
