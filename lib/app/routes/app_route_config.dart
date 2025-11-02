
import 'package:go_router/go_router.dart';
import 'package:truemech/features/auth/auth_screen/login_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'OnboardingScreen',
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(name: 'LoginScreen',
          path: '/login',
          builder: (context, state) => const LoginAuth())
    ],
  );
}
