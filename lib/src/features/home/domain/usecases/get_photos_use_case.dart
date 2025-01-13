import 'package:ass_navatech/src/core/errors/failure.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/interfaces/interfaces.dart';
import '../domain.dart';

class GetPhotosParams extends Params {

  final int id;

  GetPhotosParams({required this.id});

  @override
  List<Object?> get props => [id];

}

class GetPhotosUseCase implements UseCaseInterface<NVPhotosListEntity, GetPhotosParams> {

  final NVHomeRepositoryInterface repository;

  const GetPhotosUseCase({required this.repository});

  @override
  Future<Either<Failure, NVPhotosListEntity>> call(GetPhotosParams params) async {
    return await repository.getPhotos(params.id);
  }

}