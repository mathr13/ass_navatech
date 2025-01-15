sealed class NVPhotoEvents {}

final class NVGetPhotos extends NVPhotoEvents {

  final int albumId;

  NVGetPhotos({required this.albumId});

}