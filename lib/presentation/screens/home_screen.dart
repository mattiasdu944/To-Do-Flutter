import 'package:flutter/material.dart';
import 'package:to_do_supabase/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final Widget childView;

  const HomeScreen({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('Listado de tareas'),),
      body: childView,
      bottomNavigationBar: const CustomBottomNavigationBar(),

    );
  }
}
