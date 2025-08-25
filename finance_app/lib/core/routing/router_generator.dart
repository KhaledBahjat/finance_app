import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/features/auth/forgot_password_scrren.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/password_change_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/auth/resete_password_screen.dart';
import 'package:finance_app/features/auth/verfication_password.dart';
import 'package:finance_app/features/main_screen/main_screen.dart';
import 'package:finance_app/features/onbording/onbording_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnbordingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),

      GoRoute(
        path: AppRoutes.forgotPasswordScreen,
        name: AppRoutes.forgotPasswordScreen,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.resetPasswordScreen,
        name: AppRoutes.resetPasswordScreen,
        builder: (context, state) => const ResetPassword(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangeScreen,
        name: AppRoutes.passwordChangeScreen,
        builder: (context, state) => const PasswordChangeScreen(),
      ),
      GoRoute(
        path: AppRoutes.verificationScreen,
        name: AppRoutes.verificationScreen,
        builder: (context, state) => const VerificationScreen(),
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
