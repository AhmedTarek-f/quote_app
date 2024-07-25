import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.enabled=true,
    this.obscureText = false,
    this.onChanged,
    this.onSaved,
    this.suffixIcon,
    this.fieldController,
    this.validator,
  });
  final TextInputType? keyboardType;
  final bool? enabled;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final Widget? suffixIcon;
  final TextEditingController? fieldController;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 44,
      child:TextFormField(
        style: AppStyles.stylesRegular14.copyWith(color: const Color(0xff2A2B2E)),
        controller: fieldController,
        keyboardType: keyboardType,
        enabled: enabled,
        obscureText: obscureText!,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: validator,
        decoration:  InputDecoration(
          suffixIcon: suffixIcon,
          focusedBorder: buildOutlineInputBorder(color:Colors.black),
          enabledBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color? color=const Color(0xff808194)}) {
    return  OutlineInputBorder(
              borderRadius:const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: color!)
          );
  }
}