import 'package:advanced_app/core/utils/app_regex.dart';
import 'package:advanced_app/core/utils/extenstions.dart';

class AppValidator {
 static String? validateEmail(String? email){
   if(email.isNullOrEmpty){
     return 'enter your email';
   } else if(!AppRegex.isEmailValid(email!)){
     return 'enter a valid email';
   }
   return null;
 }

 static String? validatePassword(String? password){
   if(password.isNullOrEmpty){
     return 'enter your password';
   }else if(!AppRegex.isPasswordValid(password!)){
     return 'enter a valid password';
   }
   return null;
 }
}