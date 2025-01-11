import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T>{
  factory SignUpState.initial()=_Initial;
  factory SignUpState.loading()=Loading;
  factory SignUpState.success(T data)=Success;
  factory SignUpState.error(String error)=Error;
}
