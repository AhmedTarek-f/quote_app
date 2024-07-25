import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_images.dart';

class Intern2GrowBackGround extends StatelessWidget {
  const Intern2GrowBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.authTopBackGroundImage,
          height: MediaQuery.sizeOf(context).height*0.233,
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.fill,
        ),
        Positioned(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height*0.3034,
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                width: 116,
                height: 116,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(offset: Offset(0, 4),blurRadius: 4,color: Colors.black12,blurStyle: BlurStyle.normal)
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(
                    AppImages.intern2GrowImage,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
