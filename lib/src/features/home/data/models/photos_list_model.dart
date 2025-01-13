import 'package:json_annotation/json_annotation.dart';

import 'photo_model.dart';

part 'photos_list_model.g.dart';

@JsonSerializable()
class NVPhotosListModel {

  final List<NVPhotoModel> photos;

  const NVPhotosListModel({required this.photos});

  factory NVPhotosListModel.fromJson(Map<String, dynamic> json) {
    return _$NVPhotosListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NVPhotosListModelToJson(this);

}