import 'package:json_annotation/json_annotation.dart';

import '../../domain/domain.dart';

part 'album_model.g.dart';

@JsonSerializable()
class NVAlbumModel extends NVAlbumEntity {

  const NVAlbumModel(
    {
      required super.userId,
      required super.id,
      required super.title
    }
  );

  factory NVAlbumModel.fromJson(Map<String, dynamic> json) {
    return _$NVAlbumModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NVAlbumModelToJson(this);

}