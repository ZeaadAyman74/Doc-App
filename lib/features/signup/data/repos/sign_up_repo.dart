import 'package:advanced_app/core/networking/api_error_handler.dart';
import 'package:advanced_app/core/networking/api_result.dart';
import 'package:advanced_app/core/networking/api_service.dart';
import 'package:advanced_app/features/login/data/models/login_response_model.dart';
import 'package:advanced_app/features/signup/data/models/sign_up_request_body.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>>signUp(SignUpRequestBody signUpRequestBody)async{
    try{
      final response=await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}