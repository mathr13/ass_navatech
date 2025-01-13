import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../domain/domain.dart';
import '../models/models.dart';

class NVRemoteRepository implements NVHomeRepositoryInterface {

  @override
  Future<Either<Failure, NVAlbumsListModel>> getAlbums() {
    // TODO: implement getAlbums
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NVPhotosListModel>> getPhotos(int albumId) {
    // TODO: implement getPhotos
    throw UnimplementedError();
  }

}