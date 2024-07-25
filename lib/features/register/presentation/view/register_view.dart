import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: RegisterViewBody()
      ),
    );
  }
}
