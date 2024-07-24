import 'package:flutter/material.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Image.asset('assets/pracas.png'),
        title: const Text('Homepage'),
        actions: const [
          Icon(
            Icons.notification_add_rounded,
          ),
          SizedBox(
            width: 10,
          ),
          // Icon(Icons.search)
        ],
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            // children: [Expanded(child: GridviewBuilder())],
            // children: [Expanded(child: ListviewBuilder())],
            children: [
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
              Text("Hello I am learning flutter at PRACAS Infosys"),
            ],
          ),
        ),
      ),
    );
  }
}

class ListviewBuilder extends StatelessWidget {
  const ListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const ListTile(
          title: Text('Hello I am learning flutter at PRACAS Infosys'),
        );
      },
    );
  }
}

// class GridviewBuilder extends StatelessWidget {
//   const GridviewBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: 10,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 4.0,
//           crossAxisSpacing: 4.0,
//           childAspectRatio: 3.0),
//       itemBuilder: (context, index) {
//         return const GridTile(
//             child: Text('Hello I am learning flutter at PRACAS Infosys'));
//       },
//     );
//   }
// }
