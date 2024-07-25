import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_images.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';
import 'package:intern2grow_quote_app/core/utlis/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController? passwordController;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: AppStyles.stylesRegular14.copyWith(color:const Color(0xff808194)),
        ),
        const SizedBox(height: 8,),
        CustomTextFormField(
          obscureText: isObscure,
          suffixIcon: InkWell(
            onTap: (){
              setState(() {
                isObscure = ! isObscure;
              });
            },
            customBorder: const CircleBorder(),
            child: isObscure?Image.asset(AppImages.hideIcon):const Icon(Icons.visibility_outlined,size: 16,color: Color(0xff808194),),
          ),
          fieldController: widget.passwordController,
        ),
      ],
    );
  }
}