import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../data/data_source/remote_data_source/api_client_service.dart';
import '../data/data_source/remote_data_source/base_api_client_service.dart';
import '../data/data_source/remote_data_source/network_info.dart';
import '../data/repository/repository.dart';
import '../domain/repository/base_repository.dart';
import '../domain/use_cases/coffe_use_case.dart';
import '../presentation/screens/coffee/coffee_view_model.dart';

final getItInstance = GetIt.instance;

Future<void> initAppModule() async{
  getItInstance.registerLazySingleton<Connectivity>(() => Connectivity());

  getItInstance.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));

  getItInstance.registerLazySingleton<BaseApiClientService>(() => ApiClientService());

  getItInstance.registerLazySingleton<BaseRepository>(() => Repository(getItInstance<BaseApiClientService>(), getItInstance<NetworkInfo>()));

  initCoffeeModule();
}

initCoffeeModule(){
  if(!GetIt.I.isRegistered<CoffeeUseCase>()){
    getItInstance.registerFactory<CoffeeUseCase>(() => CoffeeUseCase(getItInstance<BaseRepository>()));
  }
  if(!GetIt.I.isRegistered<CoffeeViewModel>()){
    getItInstance.registerFactory<CoffeeViewModel>(() => CoffeeViewModel(getItInstance<CoffeeUseCase>()));
  }
}

