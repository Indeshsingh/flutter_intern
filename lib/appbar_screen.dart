import 'package:flutter/material.dart';
import 'package:flutter_intern/gridviewbuilder_screen.dart';

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
      body: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Expanded(child: ListviewBuilder())],
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
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridviewbuilderScreen()));
            },
            child: SizedBox(
              width: 100,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      width: 100,
                      margin: const EdgeInsets.all(1.0),
                      padding: const EdgeInsets.all(08),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.asset(
                        'assets/pixel.jpg',
                        height: 0,
                        width: 0,
                      )),
                  const Text(
                    'Img',
                  ),
                ],
              ),
            ),
          ),
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
