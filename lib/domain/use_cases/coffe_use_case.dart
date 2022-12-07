import 'package:coffe_test_flutter_app/data/models/failure.dart';

import 'package:dartz/dartz.dart';

import '../../data/models/coffee.dart';
import '../repository/base_repository.dart';
import 'base_use_case.dart';

class CoffeeUseCase implements BaseUseCase<void, List<Coffee>>{
  final BaseRepository _repository;

  CoffeeUseCase(this._repository);

  @override
  Future<Either<Failure, List<Coffee>>> execute(void input) async{
    return _repository.getCoffeeList();
  }

}