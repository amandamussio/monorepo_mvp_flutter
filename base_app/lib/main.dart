import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:core/app/app_module.dart';
import 'package:core/app/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ModularApp(module: AppModule(), child: const AppWidget(initialRoute: '/'),),);
}

