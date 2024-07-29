import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                height: 195,
                child: Card(
                  margin: const EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  borderOnForeground: false,
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blueAccent,
                  elevation: 10.0,
                  semanticContainer: true,
                  shadowColor: const Color.fromARGB(255, 125, 32, 32),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 9.0,
                          ),
                          child: Image.asset(
                            'assets/silent.png',
                            width: 150,
                            height: 150,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 7.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name:Silent Patient',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Author:Alex Michaelides',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Price: 400",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border_purple500_sharp,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star_border_purple500_sharp,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star_border_purple500_sharp,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star_border_purple500_sharp,
                                  size: 20,
                                  color: Colors.amber,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              // ClipOval(
              //   child: SizedBox(
              //     width: 200,
              //     height: 200,
              //     child: Image.asset('assets/indesh.jpg'),
              //   ),
              // ),
              // const Text(
              //   "Name:Indesh Singh",
              // ),
              // const Text("Address:Biratnagar")
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const DetailsScreen()));
              //   },
              //   child: const Text(
              //     'This is page 1',
              //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
