import 'package:flutter/material.dart';
import 'package:to_do_supabase/presentation/widgets/widgets.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return (
            const TaskCard()
          );
        },
      ),
    );
  }
}