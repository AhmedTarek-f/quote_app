import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';

class RememberMeField extends StatelessWidget {
  const RememberMeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10.67,
          height: 11.33,
          decoration: BoxDecoration(
              borderRadius:const BorderRadius.all(Radius.circular(2)),
              border: Border.all(width: 1.5,color: const Color(0xff808194))
          ),
        ),
        const SizedBox(width: 8,),
        Text(
          "Remember me",
          style: AppStyles.stylesBold14.copyWith(color:const Color(0xff2A2B2E)),
        )
      ],
    );
  }
}