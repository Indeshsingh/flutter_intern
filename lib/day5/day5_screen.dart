// import 'package:flutter/material.dart';

// class Day5Screen extends StatelessWidget {
//   const Day5Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Singlechildscrollview'),
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(children: [
//               ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: 30,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Image.asset('assets/pracas.png'),
//                     title: const Text('Pracas'),
//                   );
//                 },
//               ),
//             ]),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';

class Day5Screen extends StatelessWidget {
  const Day5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal Scroll'),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (context, index) {
            return Container(
              width: 60,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/pracas.png',
                    width: 80,
                  ),
                  const Text('Pracas'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
