import 'dart:io';

import 'package:coffe_test_flutter_app/app/routes/app_pages.dart';
import 'package:coffe_test_flutter_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatefulWidget{

  const MyApp._internal();
  static const MyApp _instance = MyApp._internal(); // singleton or single instance
  factory MyApp() => _instance; // factory

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (appContext, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Platform.isAndroid ? getMaterialApp() : getCupertinoApp(),
        );
      },

    );
  }

  GetMaterialApp getMaterialApp(){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.coffeeScreen,
      getPages: AppPages.pages,
    );
  }

  GetCupertinoApp getCupertinoApp(){
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.coffeeScreen,
      getPages: AppPages.pages,
    );
  }
}