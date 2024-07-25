import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';

class HaveAProblemField extends StatelessWidget {
  const HaveAProblemField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(style: BorderStyle.solid,color: Color(0xff4F90F0) ,width: 1.5))
      ),
      child: Text(
        "Have a problem?",
        style: AppStyles.stylesBold14.copyWith(color:const Color(0xff2A2B2E)),
      ),
    );
  }
}
