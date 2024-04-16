import 'package:flutter/material.dart';

class Info extends StatelessWidget implements PreferredSizeWidget {
  const Info({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
