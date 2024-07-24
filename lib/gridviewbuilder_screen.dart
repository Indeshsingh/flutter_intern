import 'package:flutter/material.dart';
import 'package:flutter_intern/detail_screen.dart';
import 'package:flutter_intern/helpers/apphelper.dart';

class GridviewbuilderScreen extends StatefulWidget {
  const GridviewbuilderScreen({super.key});

  @override
  State<GridviewbuilderScreen> createState() => _GridviewbuilderScreenState();
}

class _GridviewbuilderScreenState extends State<GridviewbuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Expanded(child: GridviewBuilder())],
      ),
    );
  }
}

class GridviewBuilder extends StatelessWidget {
  const GridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: AppHelpers.personFullname.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0),
      itemBuilder: (context, index) {
        final String personFullName = AppHelpers.personFullname[index];
        final String personAge = AppHelpers.personAge[index];
        final String personAddress = AppHelpers.personAddress[index];
        final String personImage = AppHelpers.personImage[index];

        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          personAddress: personAddress,
                          personAge: personAge,
                          personFullName: personFullName,
                          personImage: personImage,
                        )));
          },
          child: GridTile(
            footer: Center(
              child: Text(AppHelpers.personFullname[index]),
            ),
            child: Image.asset(AppHelpers.personImage[index]),
          ),
        );
      },
    );
  }
}
