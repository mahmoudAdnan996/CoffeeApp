import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';



ThemeData darkTheme = ThemeData.dark().copyWith(
    backgroundColor: AppColors.darkModeBG,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkModeBG,
      titleTextStyle: TextStyle(fontSize: ScreenUtil().setSp(20), color: Colors.white),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
    cardColor: AppColors.darkModeBG,
    shadowColor: AppColors.darkModeBG,
    textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(20), ),
        headline2: TextStyle(fontSize: ScreenUtil().setSp(16), color: Colors.white, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: ScreenUtil().setSp(14), color: Colors.white, ),
        headline4: TextStyle(fontSize: ScreenUtil().setSp(12), color: Colors.white),
        headline5: TextStyle(fontSize: ScreenUtil().setSp(12), color: Colors.white),
      headline6: TextStyle(fontSize: ScreenUtil().setSp(10), color: Colors.white.withOpacity(0.64)),
),
    iconTheme: const IconThemeData(color: Colors.white),
  indicatorColor: Colors.white,
    dividerColor: Colors.white
);