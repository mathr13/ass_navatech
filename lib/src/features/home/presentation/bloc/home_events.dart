sealed class NVHomeEvent {}

final class NVGetAlbums extends NVHomeEvent {}

final class NVGetPhotos extends NVHomeEvent {

  final int albumId;

  NVGetPhotos({required this.albumId});

}