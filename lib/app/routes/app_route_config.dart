
import 'package:go_router/go_router.dart';
import 'package:truemech/features/auth/screens/auth_screen/login_screen.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'loginAuth',
        path: '/',
        builder: (context, state) => const LoginAuth(),
      ),
    ],
  );
}
