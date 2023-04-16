import 'package:go_router/go_router.dart';
import 'package:to_do_supabase/presentation/screens/screens.dart';
import 'package:to_do_supabase/presentation/views/views.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeView(),
        ),

        GoRoute(
          path: '/tasks_completed',
          builder: (context, state) => const CompletedTasksView(),
        ),

        GoRoute(
          path: '/tasks_pending',
          builder: (context, state) => const PendingTasksView(),
        ),
      ]
    )
  ]
);
