import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 15),
            Center(
              child: Container(
                width: 390,
                height: 120,
                color: const Color(0xffe4f2fd),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 25,
                      height: 25,
                      color: const Color(0xffe0e0e0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 355,
                    height: 20,
                    color: const Color(0xffe0e0e0),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            //Divide the page using a line segment
            const Divider(
                color: const Color(0xffe0e0e0), indent: 11, endIndent: 11),
            const SizedBox(height: 10),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 45,
                        color: const Color(0xffa5d6a7),
                      ),
                      Container(
                        width: 180,
                        height: 10,
                        color: const Color(0xffe9f6ea),
                      ),
                      Container(
                        width: 180,
                        height: 45,
                        color: const Color(0xffa5d6a7),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 92,
                  height: 100,
                  color: const Color(0xffffcc80),
                ),
                Container(
                  width: 10,
                  height: 100,
                  color: const Color(0xfffef3dd),
                ),
                Container(
                  width: 92,
                  height: 100,
                  color: const Color(0xffffcc80),
                ),
              ],
            ),

            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92,
                  height: 92,
                  color: const Color(0xffe1bee8),
                ),
                Container(
                  width: 12,
                  height: 92,
                  color: const Color(0xfff3e4f7),
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 92,
                      color: const Color(0xffcf93d9),
                    ),
                    Container(
                      height: 12,
                      width: 92,
                      color: const Color(0xffe1bee8),
                    ),
                    Container(
                      height: 40,
                      width: 92,
                      color: const Color(0xffcf93d9),
                    ),
                  ],
                ),
                Container(
                  width: 12,
                  height: 92,
                  color: const Color(0xfff5e4f6),
                ),
                Container(
                  width: 92,
                  height: 92,
                  color: const Color(0xffe1bee8),
                ),
                Container(
                  width: 92,
                  height: 92,
                  color: const Color(0xfff3e5f6),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 188,
                    color: const Color(0xffb2dfdc),
                  ),
                  Container(
                    height: 60,
                    width: 15,
                    color: const Color(0xffffffff),
                  ),
                  Container(
                    height: 60,
                    width: 188,
                    color: const Color(0xff80cbc4),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Container(width: 390, height: 40, color: const Color(0xffe0e0e0)),
          ],
        ),
      ),
    );
  }
}
