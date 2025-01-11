import 'package:advanced_app/core/utils/spacing.dart';
import 'package:advanced_app/core/utils/validator.dart';
import 'package:advanced_app/core/widgets/custom_text_form_field.dart';
import 'package:advanced_app/features/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassWidget extends StatefulWidget {
  const EmailAndPassWidget({super.key});

  @override
  State<EmailAndPassWidget> createState() => _EmailAndPassWidgetState();
}

class _EmailAndPassWidgetState extends State<EmailAndPassWidget> {
  LoginCubit get cubit=>context.read<LoginCubit>();
  late TextEditingController passwordController;
  late TextEditingController emailController;
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    emailController=cubit.emailController;
    passwordController=cubit.passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
             CustomTextForm(
               controller: cubit.emailController,
              inputType: TextInputType.emailAddress,
              hintText: 'Email',
              validator: AppValidator.validateEmail,
            ),
            verticalSpace(15),
            CustomTextForm(
              controller: cubit.passwordController,
              inputType: TextInputType.visiblePassword,
              hintText: 'Password',
              isObscureText: isObscure,
              suffixIcon: GestureDetector(
                onTap: () => setState(() {
                  isObscure = !isObscure;
                }),
                child: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
              ),
              validator: AppValidator.validatePassword,
            ),
            verticalSpace(24),
          ],
        ));
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
