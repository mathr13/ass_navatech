import 'package:ass_navatech/src/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

import '../../data/data_sources/home_data_source_interface.dart';
import '../../domain/domain.dart';

abstract class NVHomeRepository {

  final HomeDataSourceInterface dataSource;

  const NVHomeRepository({required this.dataSource});

}

abstract class NVHomeRepositoryInterface {

  Future<Either<Failure, NVAlbumsListEntity>> getAlbums();
  Future<Either<Failure, NVPhotosListEntity>> getPhotos(int albumId);

}