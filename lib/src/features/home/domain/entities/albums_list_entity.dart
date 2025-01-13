import 'package:json_annotation/json_annotation.dart';

import 'album_entity.dart';

@JsonSerializable()
class NVAlbumsListEntity {

  final List<NVAlbumEntity> albums;

  const NVAlbumsListEntity({required this.albums});

}