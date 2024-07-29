import 'package:flutter/material.dart';
import 'package:flutter_intern/helpers/apphelper.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('PageView '),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: AppHelpers.peopleImage.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Column(
                        children: [
                          ClipOval(
                            child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset(
                                AppHelpers.peopleImage[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ), // it is used for circle the image
                          const SizedBox(
                            height: 10,
                          ),
                          Text(AppHelpers.peopleName[index]),
                          Text(AppHelpers.peopleDescription[index]),
                          Text(AppHelpers.peopleAddress[index]),
                        ],
                      ),
                    );
                  }), // it is used for  creates a scrollable list that works page by page using widgets that are created on demand
              // child: PageView(
              //   children: [
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 1')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 2')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 3')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 4')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 5')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 6')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 7')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 8')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 9')
              //       ],
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         ClipOval(
              //           child: SizedBox(
              //             height: 200,
              //             width: 200,
              //             child: Image.asset(
              //               'assets/indesh.jpg',
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 20),
              //         const Text(
              //           'Indesh singh',
              //           style: TextStyle(
              //               fontSize: 24, fontWeight: FontWeight.bold),
              //         ),
              //         const Text(
              //             'Hi, I am Indesh Singh currently learning Flutter at Pracas Infosys.Today i am learning about pageview widget and clipoval widget and add images on it. '),
              //         const Text('Address : Biratnagar'),
              //         const Text('Page: 10')
              //       ],
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
