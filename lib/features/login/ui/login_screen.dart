import 'package:advanced_app/core/theming/text_styles.dart';
import 'package:advanced_app/core/utils/spacing.dart';
import 'package:advanced_app/core/widgets/custom_button.dart';
import 'package:advanced_app/features/login/logic/login_cubit.dart';
import 'package:advanced_app/features/login/ui/widgets/donot_have_account_text.dart';
import 'package:advanced_app/features/login/ui/widgets/email_and_pass_widget.dart';
import 'package:advanced_app/features/login/ui/widgets/login-bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            Column(
              children: [
                const EmailAndPassWidget(),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forget Password?',
                      style: TextStyles.font12BlueRegular,
                    )),
                verticalSpace(45),
                CustomButton(
                  title: 'Login',
                  onPressed: () {
                    _onLoginButtonPressed(context);
                  },
                ),
                verticalSpace(50),
                const DoNotHaveAccount(),
                const LoginBlocListener()
              ],
            )
          ],
        ),
      )),
    );
  }

  void _onLoginButtonPressed(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
