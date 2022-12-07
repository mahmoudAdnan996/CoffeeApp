import 'package:get/get.dart';

import '../../../data/models/coffee.dart';
import '../../../domain/use_cases/coffe_use_case.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CoffeeViewModel extends GetxController implements BaseCoffeeViewModel{
  final CoffeeUseCase _coffeeUseCase;
  RefreshController refreshController = RefreshController(initialRefresh: false);

  RxList coffeeList = [].obs;

  CoffeeViewModel(this._coffeeUseCase);


  @override
  void onInit() {
    super.onInit();
    getCoffeeList();
  }

  @override
  void refreshCoffeeList() {
    getCoffeeList();
  }

  @override
  void getCoffeeList() async{
    (await _coffeeUseCase.execute(null))
        .fold((failure){
    setCoffeeList(const Iterable.empty().cast<Coffee>().toList());
    }, (data) {
    setCoffeeList(data);
    });
  }

  @override
  void setCoffeeList(List<Coffee> coffeeLst) {
    coffeeList.clear();
    coffeeList.addAll(coffeeLst);
    update();
  }

}

abstract class BaseCoffeeViewModel{
  void getCoffeeList();
  void refreshCoffeeList();
  void setCoffeeList(List<Coffee> coffeeLst);
}