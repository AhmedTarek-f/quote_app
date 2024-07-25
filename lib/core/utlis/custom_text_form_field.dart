import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.enabled=true,
    this.obscureText = true,
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
        controller: fieldController,
        keyboardType: keyboardType,
        enabled: enabled,
        obscureText: obscureText!,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: validator,
        decoration:  InputDecoration(
          suffixIcon: suffixIcon,
            border:buildOutlineInputBorder()
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xff808194))
          );
  }
}