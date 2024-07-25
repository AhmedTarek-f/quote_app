import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';
import 'package:intern2grow_quote_app/core/utlis/custom_button.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/widgets/forget_password_field.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/widgets/password_field.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/widgets/register_field.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/widgets/remember_me_field.dart';
import 'package:intern2grow_quote_app/features/log_in/presentation/view/widgets/user_name_field.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.061),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserNameField(userNameController: userNameController),
              const SizedBox(height: 22,),
              PasswordField(passwordController: passwordController),
              const SizedBox(height: 22,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RememberMeField(),
                  ForgetPasswordField()
                ],
              ),
              const SizedBox(height: 22,),
              CustomButton(
                buttonLabel: "Log in",
                onTap: () {},
              ),
              const SizedBox(height: 22,),
              const RegisterField()
            ],
          ),
        ),
      ),
    );
  }
}



