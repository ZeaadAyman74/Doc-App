import 'package:advanced_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, required this.onPressed, this.height});

  final String title;
  final double? height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(AppColors.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                MaterialStatePropertyAll(Size(double.infinity, height ?? 55.h)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r)))),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp),
        ));
  }
}
