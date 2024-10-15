import 'package:advanced_app/app/doc_app.dart';
import 'package:advanced_app/bloc_observer.dart';
import 'package:advanced_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  Bloc.observer = MyBlocObserver();
  runApp(const DocApp());
}
