import 'package:advanced_app/core/networking/end_points.dart';
import 'package:advanced_app/features/login/data/models/login_request_model.dart';
import 'package:advanced_app/features/login/data/models/login_response_model.dart';
import 'package:advanced_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(EndPoints.login)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(EndPoints.signup)
  Future<LoginResponseModel> signup(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
