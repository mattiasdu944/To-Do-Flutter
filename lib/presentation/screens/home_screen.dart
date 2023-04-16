import 'package:flutter/material.dart';
import 'package:to_do_supabase/presentation/views/views.dart';
import 'package:to_do_supabase/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final int pageIndex;

  const HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = const <Widget>[
    HomeView(),
    CompletedTasksView(),
    PendingTasksView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de tareas'),
      ),
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomNavigationBottomBar(currentIndex: pageIndex),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
        child: const Icon(Icons.add),
      ),
    );
  }
}
