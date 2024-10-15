import 'package:advanced_app/core/networking/api_error_handler.dart';
import 'package:advanced_app/core/networking/api_result.dart';
import 'package:advanced_app/core/networking/api_service.dart';
import 'package:advanced_app/features/login/data/models/login_request_model.dart';
import 'package:advanced_app/features/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
