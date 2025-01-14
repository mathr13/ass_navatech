import '../models/models.dart';

abstract class HomeDataSourceInterface {

  Future<NVAlbumsListModel> getAlbums();
  Future<NVPhotosListModel> getPhotos(int id);

}