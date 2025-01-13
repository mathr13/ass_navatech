import 'package:json_annotation/json_annotation.dart';

import 'photo_entity.dart';

@JsonSerializable()
class NVPhotosListEntity {

  final List<NVPhotoEntity> photos;

  const NVPhotosListEntity({required this.photos});

}