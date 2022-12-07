import 'package:dartz/dartz.dart';

import '../../data/models/coffee.dart';
import '../../data/models/failure.dart';

abstract class BaseRepository{

  Future<Either<Failure, List<Coffee>>> getCoffeeList();
}