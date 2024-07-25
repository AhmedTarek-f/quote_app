import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intern2grow_quote_app/core/app_router.dart';
import 'package:intern2grow_quote_app/core/app_styles.dart';

class LogInField extends StatelessWidget {
  const LogInField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Already have an account?",
          style: AppStyles.stylesRegular14.copyWith(color:const Color(0xff2A2B2E)),
        ),
        const SizedBox(width: 6,),
        InkWell(
          onTap: (){
            GoRouter.of(context).pushReplacement(AppRouter.kLogInView);
          },
          child: Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(style: BorderStyle.solid,color: Color(0xff4F90F0) ,width: 1.5))
            ),
            child: Text(
              "Log in",
              style: AppStyles.stylesBold14.copyWith(color:const Color(0xff2A2B2E)),
            ),
          ),
        )
      ],
    );
  }
}
