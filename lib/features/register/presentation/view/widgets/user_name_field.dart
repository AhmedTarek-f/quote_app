import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_images.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';
import 'package:intern2grow_quote_app/core/utlis/custom_text_form_field.dart';

class UserNameField extends StatefulWidget {
  const UserNameField({
    super.key,
    required this.userNameController,
  });

  final TextEditingController? userNameController;

  @override
  State<UserNameField> createState() => _UserNameFieldState();
}

class _UserNameFieldState extends State<UserNameField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: AppStyles.stylesRegular14.copyWith(color:const Color(0xff808194)),
        ),
        const SizedBox(height: 8,),
        CustomTextFormField(
          suffixIcon: InkWell(
            onTap: (){
              if(widget.userNameController?.text.isNotEmpty?? false)
                {
                  widget.userNameController!.clear();
                }
            },
            customBorder: const CircleBorder(),
            child: Image.asset(AppImages.removeIcon),
          ),
          fieldController: widget.userNameController,
        ),
      ],
    );
  }
}