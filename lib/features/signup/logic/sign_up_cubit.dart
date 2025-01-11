import 'package:advanced_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:advanced_app/features/signup/data/repos/sign_up_repo.dart';
import 'package:advanced_app/features/signup/logic/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());
  final SignUpRepo _signUpRepo;

  void signUp(SignUpRequestBody signUpRequestBody) async {
    emit(SignUpState.loading());
    final response = await _signUpRepo.signUp(signUpRequestBody);
    response.when(
      success: (data) => emit(SignUpState.success(data)),
      failure: (errorHandler) =>
          SignUpState.error(errorHandler.apiErrorModel.message ?? ''),
    );
  }
}
