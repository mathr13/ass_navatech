import 'package:ass_navatech/src/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

import '../../domain/domain.dart';

abstract class NVHomeRepositoryInterface {

  Future<Either<Failure, NVAlbumsListEntity>> getAlbums();
  Future<Either<Failure, NVPhotosListEntity>> getPhotos(int albumId);

}