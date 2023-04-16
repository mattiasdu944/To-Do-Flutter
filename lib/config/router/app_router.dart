import 'package:go_router/go_router.dart';
import 'package:to_do_supabase/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0', 
  routes: [
    GoRoute(
        path: '/home/:page',
        builder: (context, state) {
          final pageIndex = state.params['page'] ?? '0';

          return HomeScreen( pageIndex: int.parse(pageIndex) );
        },
    ),
  ]
);
