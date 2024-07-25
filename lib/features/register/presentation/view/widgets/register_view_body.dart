import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';
import 'package:intern2grow_quote_app/core/utlis/intern_2_grow_back_ground.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/registration_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Intern2GrowBackGround(),
          const SizedBox(height: 25,),
          Text(
            "Create new account",
            style: AppStyles.stylesBold20,
          ),
          const SizedBox(height: 22,),
          const RegistrationForm(),
        ],
      ),
    );
  }
}




