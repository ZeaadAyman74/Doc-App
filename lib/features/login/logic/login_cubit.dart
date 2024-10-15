import 'package:advanced_app/features/login/data/models/login_request_model.dart';
import 'package:advanced_app/features/login/data/repos/login_repo.dart';
import 'package:advanced_app/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(email: emailController.text, password: passwordController.text));
    response.when(
      success: (data) => emit(LoginState.success(data)),
      failure: (errorHandler) => emit(
          LoginState.error(error: errorHandler.apiErrorModel.message ?? '')),
    );
  }
}
