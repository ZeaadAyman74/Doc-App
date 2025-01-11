import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? useData;
  final int? code;

  LoginResponseModel({this.message, this.useData, this.code});

  factory LoginResponseModel.fromJson(Map<String,dynamic>json)=>_$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'username')
  final String? userName;
  final String? token;

  UserData({this.userName, this.token});

  factory UserData.fromJson(Map<String,dynamic>json)=>_$UserDataFromJson(json);


}
