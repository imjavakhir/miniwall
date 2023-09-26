import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:miniwall/features/auth/views/forgotpassword_view.dart';
import 'package:miniwall/features/auth/views/setpassword_view.dart';
import 'package:miniwall/features/auth/views/signin_view.dart';
import 'package:miniwall/features/auth/views/signup_view.dart';
import 'package:miniwall/features/navigation/views/main_view.dart';
import 'package:miniwall/features/onboarding/views/onboarding_view.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/${RouteNames.onboarding}', routes: [
    GoRoute(
        path: '/${RouteNames.signIn}',
        name: RouteNames.signIn,
        builder: (context, state) => const SignInView(),
        routes: [
          GoRoute(
              path: RouteNames.forgotPassword,
              name: RouteNames.forgotPassword,
              builder: (context, state) => const ForgotPasswordView(),
              routes: [
                GoRoute(
                  path: RouteNames.setPassword,
                  name: RouteNames.setPassword,
                  builder: (context, state) => const SetPasswordView(),
                ),
              ]),
        ]),
    GoRoute(
      path: '/${RouteNames.signUp}',
      name: RouteNames.signUp,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: '/${RouteNames.main}',
      name: RouteNames.main,
      builder: (context, state) => const MainView(),
    ),
    GoRoute(
      path: '/${RouteNames.home}',
      name: RouteNames.home,
      builder: (context, state) => const HomeNavigationView(),
    ),
    GoRoute(
      path: '/${RouteNames.onboarding}',
      name: RouteNames.onboarding,
      builder: (context, state) => const OnboardingView(),
    )
  ]);
});

abstract class RouteNames {
  static const String main = 'main';
  static const String signIn = 'singIn';
  static const String setPassword = 'setPassword';
  static const String signUp = 'singUp';
  static const String home = 'home';
  static const String forgotPassword = 'forgotPassword';
  static const String onboarding = 'onboarding';
}
