import 'package:advanced_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  // Bold => 700
  // Semi-bold => 600
  // Medium => 500
  // Regular => 400

  static  TextStyle font24BlackBold=TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );
  static  TextStyle font32BlueBold=TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.mainBlue
  );

  static TextStyle font14GrayRegular=TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
  );
}