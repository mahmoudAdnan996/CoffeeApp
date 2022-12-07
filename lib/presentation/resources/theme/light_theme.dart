import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';


ThemeData lightTheme = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: AppColors.lightModeBG,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightModeBG,
      titleTextStyle: TextStyle(fontSize: ScreenUtil().setSp(20), color: Colors.white),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
    cardColor: Colors.white,
    shadowColor: Colors.grey.shade200,
    textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black, fontSize: ScreenUtil().setSp(20)),
        headline2: TextStyle(fontSize: ScreenUtil().setSp(16), color: Colors.black, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: ScreenUtil().setSp(14), color: Colors.black),
        headline4: TextStyle(fontSize: ScreenUtil().setSp(12), color: AppColors.primaryColor),
        headline5: TextStyle(fontSize: ScreenUtil().setSp(12), color: Colors.black),
      headline6: TextStyle(fontSize: ScreenUtil().setSp(10), color: const Color(0x64848484)),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  indicatorColor: Colors.white,
  dividerColor: Colors.white
);