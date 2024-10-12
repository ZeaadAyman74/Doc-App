import 'package:advanced_app/core/di/di.dart';
import 'package:advanced_app/core/routing/router.dart';
import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  Size get _size => MediaQuery.of(this).size;

  double get width => _size.width;

  double get height => _size.height;
}

extension NavigationExtension on BuildContext {
  void push(String routeName, {Object? arg}) {
    sl<AppRouter>()
        .navigatorKey
        .currentState!
        .pushNamed(routeName, arguments: arg);
  }

  void pushAndRemove(String routeName, {Object? arg}) {
    sl<AppRouter>()
        .navigatorKey
        .currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false, arguments: arg);
  }

  void pushAndReplace(String routeName,{Object? arg}){
    sl<AppRouter>()
        .navigatorKey
        .currentState!.pushReplacementNamed(routeName,arguments: arg);
  }

  void popAndRemove(String routeName) {
    Navigator.popUntil(this, ModalRoute.withName(routeName));
  }

  void pop() {
    return Navigator.pop(this);
  }

  void popDialog(){
    Navigator.of(this,rootNavigator: true).pop();
  }
}