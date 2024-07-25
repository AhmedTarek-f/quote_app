import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.buttonColor=const Color(0xff007BFF), required this.buttonLabel, required this.onTap,
  });
  final Color? buttonColor;
  final String buttonLabel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 44,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            color: buttonColor
        ),
        child: Center(
          child: Text(
            buttonLabel,
            style: AppStyles.stylesBold14.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
