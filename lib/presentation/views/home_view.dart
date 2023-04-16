

import 'package:flutter/material.dart';
import 'package:to_do_supabase/presentation/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [

          TasksList()
        
        
        ],
      ),
    );
  }
}