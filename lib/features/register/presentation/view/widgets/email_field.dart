import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_images.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';
import 'package:intern2grow_quote_app/core/utlis/custom_text_form_field.dart';

class EmailField extends StatefulWidget {
  const EmailField({
    super.key,
    required this.emailController,
  });

  final TextEditingController? emailController;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: AppStyles.stylesRegular14.copyWith(color:const Color(0xff808194)),
        ),
        const SizedBox(height: 8,),
        CustomTextFormField(
          suffixIcon: InkWell(
            onTap: (){
              if(widget.emailController?.text.isNotEmpty?? false)
              {
                widget.emailController!.clear();
              }
            },
            customBorder: const CircleBorder(),
            child: Image.asset(AppImages.removeIcon),
          ),
          fieldController: widget.emailController,
        ),
      ],
    );
  }
}