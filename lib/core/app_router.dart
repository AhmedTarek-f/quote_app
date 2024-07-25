import 'package:go_router/go_router.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/log_in_view.dart';

abstract class AppRouter
{
  static const kLogInView = "/";
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: kLogInView,
          builder: (context, state) =>const LogInView(),
        ),
      ]
  );
}