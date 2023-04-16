import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  
  
  int getCurrentIndex( BuildContext context ) {
    final String location = GoRouterState.of(context).location;

    switch(location) {
      case "/":
        return  0;

      case "/tasks_completed":
        return  1;

      case "/tasks_pending":
        return  2;


      default:
        return 0;
    }


  }  
  void onItemTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;

      case 1:
        context.go('/tasks_completed');
        break;

      case 2:
        context.go('/tasks_pending');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: getCurrentIndex(context),
      onTap: (menuIndex) {
        setState(() {
          onItemTap(context, menuIndex);
        });
      },
      elevation: 2,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task),
          label: 'Completadas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task),
          label: 'Pendientes',
        ),
      ],
    );
  }
}
