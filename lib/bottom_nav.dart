import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget implements PreferredSizeWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _BottomNavState extends State<BottomNav> {
  int _index = 0;
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
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.trending_neutral), label: 'Tree'),
      ],
      currentIndex: _index,
      selectedItemColor: Colors.green,
      onTap: (value) => {},
    );
  }
}
