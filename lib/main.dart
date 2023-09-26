import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniwall/firebase_options.dart';
import 'package:miniwall/miniwall_app.dart';
import 'package:miniwall/theme/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.scaffoldBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Future.delayed(const Duration(milliseconds: 1000));
  runApp(const ProviderScope(child: Miniwall()));
}
