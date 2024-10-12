import 'package:advanced_app/core/theming/text_styles.dart';
import 'package:advanced_app/core/utils/images/images.dart';
import 'package:advanced_app/core/utils/images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(SvgImages.dodocLogoWithOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(AppImages.onboardingDoctor),
        ),
        Positioned(
          bottom: 30.h,
            right: 0,
            left: 0,
            child: Text(
          'Best Doctor \nAppointment App',
          textAlign: TextAlign.center,
          style: TextStyles.font32BlueBold.copyWith(height: 1.4),
        ))
      ],
    );
  }
}
