import 'package:json_annotation/json_annotation.dart';

import 'album_model.dart';

part 'albums_list_model.g.dart';

@JsonSerializable()
class NVAlbumsListModel {

  final List<NVAlbumModel> albums;

  const NVAlbumsListModel({required this.albums});

  factory NVAlbumsListModel.fromJson(Map<String, dynamic> json) {
    return _$NVAlbumsListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NVAlbumsListModelToJson(this);

}