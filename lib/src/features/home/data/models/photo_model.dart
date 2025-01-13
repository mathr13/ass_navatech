import 'package:json_annotation/json_annotation.dart';

import '../../domain/domain.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class NVPhotoModel extends NVPhotoEntity {

  const NVPhotoModel(
    {
      required super.albumId,
      required super.id,
      required super.title,
      required super.url,
      required super.thumbnailUrl
    }
  );

  factory NVPhotoModel.fromJson(Map<String, dynamic> json) {
    return _$NVPhotoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NVPhotoModelToJson(this);

}