import 'package:flutter/material.dart';

class GridviewbuilderScreen extends StatelessWidget {
  const GridviewbuilderScreen({super.key});

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
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0),
      itemBuilder: (context, index) {
        // ignore: sort_child_properties_last
        return Container(
          child: GridTile(
            footer: const Center(
              child: Text('Pracas sir'),
            ),
            child: Image.asset('assets/pracas.png'),
          ),
        );
      },
    );
  }
}
