import 'package:finance_app/core/routing/app_routs.dart';
import 'package:finance_app/features/auth/forgot_password_scrren.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/password_change_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/auth/resete_password_screen.dart';
import 'package:finance_app/features/auth/verfication_password.dart';
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

      GoRoute(
        path: AppRoutes.forgotPasswordScreen,
        name: AppRoutes.forgotPasswordScreen,
        builder: (context, state) => ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.resetPasswordScreen,
        name: AppRoutes.resetPasswordScreen,
        builder: (context, state) => ResetPassword(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangeScreen,
        name: AppRoutes.passwordChangeScreen,
        builder: (context, state) => PasswordChangeScreen(),
      ),
      GoRoute(
        path: AppRoutes.verificationScreen,
        name: AppRoutes.verificationScreen,
        builder: (context, state) => VerificationScreen(),
      ),
    ],
  );
}
