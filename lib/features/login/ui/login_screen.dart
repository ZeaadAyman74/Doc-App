import 'package:advanced_app/core/theming/text_styles.dart';
import 'package:advanced_app/core/utils/spacing.dart';
import 'package:advanced_app/core/widgets/custom_button.dart';
import 'package:advanced_app/core/widgets/custom_text_form_field.dart';
import 'package:advanced_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpace(8),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(30),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    const CustomTextForm(hintText: 'Email'),
                    verticalSpace(15),
                    CustomTextForm(
                      hintText: 'Password',
                      isObscureText: isObscure,
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                          isObscure = !isObscure;
                        }),
                        child: Icon(isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    verticalSpace(24),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forget Passwor?',
                          style: TextStyles.font12BlueRegular,
                        )),
                    verticalSpace(45),
                    CustomButton(title: 'Login', onPressed: () {},),
                    verticalSpace(50),
                    const AlreadyHaveAccountText()
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
