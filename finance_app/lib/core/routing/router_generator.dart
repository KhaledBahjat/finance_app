import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/onbording_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => OnbordingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => RegisterScreen(),
      ),
    ],
  );
}
