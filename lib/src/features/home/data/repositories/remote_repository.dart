import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../domain/domain.dart';

class NVRemoteRepository implements NVHomeRepositoryInterface {

  @override
  Future<Either<Failure, NVAlbumsListEntity>> getAlbums() {
    // TODO: implement getAlbums
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NVPhotosListEntity>> getPhotos(int albumId) {
    // TODO: implement getPhotos
    throw UnimplementedError();
  }

}