import 'package:advanced_app/app/doc_app.dart';
import 'package:advanced_app/core/di/di.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  runApp(const DocApp());
}
