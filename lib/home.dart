import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_app/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _index = 0;
  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/crypto');
        break;
      case 2:
        Navigator.pushNamed(context, '/portfolio');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.white),
                Icon(Icons.verified_user_rounded, color: Colors.white)
              ],
            ),
            Container(
              padding: const EdgeInsets.all(24),
              child: const Column(
                textDirection: TextDirection.ltr,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hi there!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Md Johirul Islam Akash',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(children: [Text('Head'), Text('Botom')]),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(121, 0, 201, 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: const Icon(Icons.update, color: Colors.white),
                    )
                  ]),
            )
          ])),
      backgroundColor: const Color.fromRGBO(121, 0, 201, 0.5),
    );
  }
}
