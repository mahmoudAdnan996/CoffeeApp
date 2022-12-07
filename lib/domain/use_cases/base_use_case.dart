import 'package:dartz/dartz.dart';

import '../../data/models/failure.dart';

abstract class BaseUseCase<In, Out>{
  Future<Either<Failure, Out>> execute(In input);
}