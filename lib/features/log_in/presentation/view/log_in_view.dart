import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: LogInViewBody()
      ),
    );
  }
}
