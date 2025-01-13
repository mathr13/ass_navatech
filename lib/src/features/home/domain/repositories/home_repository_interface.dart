import 'package:ass_navatech/src/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/models.dart';

abstract class NVHomeRepositoryInterface {

  Future<Either<Failure, NVAlbumsListModel>> getAlbums();
  Future<Either<Failure, NVPhotosListModel>> getPhotos(int albumId);

}