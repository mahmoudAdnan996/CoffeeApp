import 'package:coffe_test_flutter_app/data/models/coffee.dart';

import 'package:coffe_test_flutter_app/data/models/failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/base_repository.dart';
import '../data_source/remote_data_source/api_endpoints.dart';
import '../data_source/remote_data_source/base_api_client_service.dart';
import '../data_source/remote_data_source/exceptions.dart';
import '../data_source/remote_data_source/network_info.dart';

class Repository implements BaseRepository{
  final BaseApiClientService _baseApiClientService;
  final NetworkInfo _networkInfo;

  Repository(this._baseApiClientService, this._networkInfo);

  @override
  Future<Either<Failure, List<Coffee>>> getCoffeeList() async{
    if(await _networkInfo.isConnected){
      try {
        final result = await _baseApiClientService.postRequest(EndPoints.getCoffeeAPI, null);
        return Right(result);
      }on AppException catch(error){
        return Left(Failure(statusCode: 500, statusMessage: error.toString(), success: false));
      }
    }else{
      return Left(Failure(statusCode: 502, statusMessage: "No internet connection", success: false));
    }
  }

}