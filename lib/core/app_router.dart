import 'package:go_router/go_router.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/log_in_view.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/register_view.dart';

abstract class AppRouter
{
  static const kLogInView = "/";
  static const kRegisterView = "/RegisterView";
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: kLogInView,
          builder: (context, state) =>const LogInView(),
        ),
        GoRoute(
          path: kRegisterView,
          builder: (context, state) =>const RegisterView(),
        ),
      ]
  );
}