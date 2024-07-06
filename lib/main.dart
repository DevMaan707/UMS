import 'package:classroom_app/blocks.dart';
import 'package:classroom_app/pages/Auth/Login.dart';
import 'package:classroom_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/auth_controller.dart';
import 'homepage.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Splash()),
      GetPage(name: '/login', page: () => Login()),
    ],
  )
  );
}