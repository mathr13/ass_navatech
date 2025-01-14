import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../domain/domain.dart';

class NVRemoteRepository extends NVHomeRepository implements NVHomeRepositoryInterface {

  const NVRemoteRepository({required super.dataSource});

  @override
  Future<Either<Failure, NVAlbumsListEntity>> getAlbums() async {
    try {
      final response = await dataSource.getAlbums();
      return Right(response);
    } catch (_) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, NVPhotosListEntity>> getPhotos(int albumId) async {
    try {
      final response = await dataSource.getPhotos(albumId);
      return Right(response);
    } catch (_) {
      return Left(Failure());
    }
  }

}