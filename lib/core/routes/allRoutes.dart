import 'package:blog_app/core/routes/routeNames.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      // path: '/signup',
      path: RouteNames.signUp,
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: RouteNames.signIn,
      builder: (context, state) => const LogInPage(),
    ),
  ],
);
