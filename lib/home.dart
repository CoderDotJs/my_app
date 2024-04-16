import 'package:flutter/material.dart';
import 'package:my_app/Body1.dart';
import 'package:my_app/body2.dart';
import 'package:my_app/bottom_nav.dart';
import 'package:my_app/header.dart';
import 'package:my_app/info.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    void onPress() {
      return;
    }

    return Scaffold(
      // appBar: const CustomAppBar(),
      body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            const Header(),
            const Info(),
            const Body1(),
            const Body2(),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: TextButton(
                style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(121, 0, 201, 0.5)),
                    iconSize: MaterialStatePropertyAll(400),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
                onPressed: onPress,
                child: const Text('Search'),
              ),
            )
          ])),
      backgroundColor: const Color.fromRGBO(121, 0, 201, 0.5),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
