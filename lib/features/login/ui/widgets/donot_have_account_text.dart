import 'package:advanced_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(textAlign: TextAlign.center,text: TextSpan(
        children:[
          TextSpan(text: 'don\'t have an account? ',style: TextStyles.font13DarkBlueRegular),
          TextSpan(text: 'Sign Up',style: TextStyles.font13BlueSemiBold,),
        ]
    ));
  }
}
