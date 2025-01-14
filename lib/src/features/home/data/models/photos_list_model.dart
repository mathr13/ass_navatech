import 'package:json_annotation/json_annotation.dart';

import '../../domain/domain.dart';
import 'photo_model.dart';

part 'photos_list_model.g.dart';

@JsonSerializable()
class NVPhotosListModel extends NVPhotosListEntity {

  const NVPhotosListModel({required super.photos});

  factory NVPhotosListModel.fromJson(Map<String, dynamic> json) {
    return _$NVPhotosListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NVPhotosListModelToJson(this);

}