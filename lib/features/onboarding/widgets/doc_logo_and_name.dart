import 'package:advanced_app/core/theming/text_styles.dart';
import 'package:advanced_app/core/utils/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(SvgImages.dodocLogo),
        SizedBox(width: 10.w,),
        Text('Docdoc',style: TextStyles.font24BlackBold,),
      ],
    );
  }
}
