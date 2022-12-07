import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../app/di.dart';
import '../../resources/app_sizes.dart';
import '../../resources/app_strings.dart';
import '../../widget/coffee_list_item.dart';
import 'coffee_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CoffeeScreen extends StatelessWidget{
  final CoffeeViewModel _coffeeViewModel = getItInstance<CoffeeViewModel>();

  CoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.coffeeTitle)),
      body: SmartRefresher(
        controller: _coffeeViewModel.refreshController,
        onRefresh: () => _coffeeViewModel.refreshCoffeeList(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.w, vertical: AppPadding.p10.h),
          child: Obx(() => _coffeeViewModel.coffeeList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: _coffeeViewModel.coffeeList.length,
                itemBuilder: (context, index){
                  return CoffeeListItem(coffee: _coffeeViewModel.coffeeList.elementAt(index));
                }),
          ),
        ),
      ),
    );
  }

}