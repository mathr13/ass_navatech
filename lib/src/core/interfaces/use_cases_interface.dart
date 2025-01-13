import 'package:dartz/dartz.dart';

import '../errors/errors.dart';

abstract class UseCaseInterface<T, P> {

  Future<Either<Failure, T>> call(P params);

}