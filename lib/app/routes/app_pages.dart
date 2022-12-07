import 'package:get/get.dart';

import '../../presentation/screens/coffee/coffee_screen.dart';
import 'app_routes.dart';


class AppPages{
  static var pages = [
    GetPage(name: AppRoutes.coffeeScreen, page: () => CoffeeScreen(), transition: Transition.native),

  ];
}