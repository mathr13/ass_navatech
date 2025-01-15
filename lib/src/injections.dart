import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/home/data/data_sources/home_data_source_interface.dart';
import 'features/home/data/data_sources/home_remote_data_source.dart';
import 'features/home/data/repositories/remote_repository.dart';
import 'features/home/domain/domain.dart';
import 'features/home/presentation/bloc/bloc.dart';

final injector = GetIt.instance;

Future<void> injections() async {

  injector.registerFactory<Dio>(
    () => Dio()
  );

  injector.registerFactory<HomeDataSourceInterface>(
    () => HomeRemoteDataSource(dio: injector())
  );

  injector.registerFactory<NVHomeRepositoryInterface>(
    () => NVRemoteRepository(dataSource: injector())
  );

  injector.registerFactory<NVHomeBloc>(
    () => NVHomeBloc(getAlbums: GetAlbumsUseCase(repository: injector()))
  );

  injector.registerLazySingleton<NVPhotosBloc>(
    () => NVPhotosBloc(getPhotos: GetPhotosUseCase(repository: injector()))
  );

}