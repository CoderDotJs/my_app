import 'package:flutter/material.dart';

class Body1 extends StatelessWidget implements PreferredSizeWidget {
  const Body1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          Row(children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: const Icon(Icons.send, color: Colors.white, size: 14),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'From',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                      textAlign: TextAlign.left,
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Location 1',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                        )))
              ]),
            )
          ]),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(121, 0, 201, 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child:
                    const Icon(Icons.pin_drop, color: Colors.white, size: 14),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(children: [
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'To',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                        textAlign: TextAlign.left,
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('Location 2',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade800,
                          )))
                ]),
              )
            ]),
          )
        ]),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(121, 0, 201, 0.5),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: const Icon(Icons.update, color: Colors.white),
        )
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
