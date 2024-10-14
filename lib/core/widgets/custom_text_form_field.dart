import 'package:advanced_app/core/theming/colors.dart';
import 'package:advanced_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final bool? isObscureText;

  const CustomTextForm(
      {super.key, required this.hintText, this.backgroundColor, this.isObscureText, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(
              color: AppColors.moreLightGray,
              width: 1.3,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(
              color: AppColors.mainBlue,
              width: 1.3,
            )
        ),
        fillColor: AppColors.lighterGray,
        hintText:hintText,
        filled: true,
        hintStyle: TextStyles.font14LightGrayMedium,
        prefixIcon:prefixIcon,
        suffixIcon:suffixIcon,
      ),
      style: TextStyles.font14DarkBlueMedium,
      obscureText: isObscureText??false,
    );
  }
}
