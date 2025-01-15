import 'package:ass_navatech/src/core/errors/errors.dart';
import 'package:dio/dio.dart';

import '../../../../core/constants/endpoints.dart';
import '../models/models.dart';
import 'home_data_source_interface.dart';

class HomeRemoteDataSource implements HomeDataSourceInterface {

  final Dio dio;

  const HomeRemoteDataSource({required this.dio});

  @override
  Future<NVAlbumsListModel> getAlbums() async {
    try {
      final uri = Uri(
        scheme: NVEndpoints.scheme,
        host: Uri.parse(NVEndpoints.baseUrl).host,
        path: NVEndpoints.getAlbums
      );
      final response = await dio.get(uri.toString());
      return NVAlbumsListModel(
        albumsList: (response.data as List).map(
          (e) => NVAlbumModel.fromJson(e)
        ).toList()
      );
    } catch(_) {
      throw ParsingException();
    }
  }

  @override
  Future<NVPhotosListModel> getPhotos(int id) async {
    try {
      final uri = Uri(
        scheme: NVEndpoints.scheme,
        host: Uri.parse(NVEndpoints.baseUrl).host,
        path: NVEndpoints.getPhotos,
        queryParameters: {"albumId": id.toString()}
      );
      final response = await dio.get(uri.toString());
      return NVPhotosListModel(
        photosList: (response.data as List).map(
          (e) => NVPhotoModel.fromJson(e)
        ).toList()
      );
    } catch(_) {
      throw ParsingException();
    }
  }

}