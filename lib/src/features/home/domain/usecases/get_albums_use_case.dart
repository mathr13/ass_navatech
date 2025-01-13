import 'package:ass_navatech/src/core/errors/failure.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/interfaces/interfaces.dart';
import '../domain.dart';

class GetAlbumsUseCase implements UseCaseInterface<NVAlbumsListEntity, NoParameters> {

  final NVHomeRepositoryInterface repository;

  const GetAlbumsUseCase({required this.repository});

  @override
  Future<Either<Failure, NVAlbumsListEntity>> call(NoParameters params) async {
    return await repository.getAlbums();
  }

}