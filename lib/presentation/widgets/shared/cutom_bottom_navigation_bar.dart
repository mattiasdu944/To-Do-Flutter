import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationBottomBar extends StatelessWidget {
  final int currentIndex;

  const CustomNavigationBottomBar({super.key, required this.currentIndex});

  void onItemTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home/0');
        break;

      case 1:
        context.go('/home/1');
        break;

      case 2:
        context.go('/home/2');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (menuIndex) {
        onItemTap(context, menuIndex);
      },
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: 'Completadas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timelapse),
          label: 'Pendientes',
        ),
      ],
    );
  }
}
