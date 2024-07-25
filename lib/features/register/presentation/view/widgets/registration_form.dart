import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/email_field.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/have_a_problem_field.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/log_in_field.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/password_field.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/register_button.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/remember_me_field.dart';
import 'package:intern2grow_quote_app/features/register/presentation/view/widgets/user_name_field.dart';


class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
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
              EmailField(emailController: emailController),
              const SizedBox(height: 22,),
              PasswordField(passwordController: passwordController),
              const SizedBox(height: 22,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RememberMeField(),
                  HaveAProblemField(),
                ],
              ),
              const SizedBox(height: 22,),
              const RegisterButton(),
              const SizedBox(height: 22,),
              const LogInField()
            ],
          ),
        ),
      ),
    );
  }
}




