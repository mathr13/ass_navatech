import 'package:json_annotation/json_annotation.dart';

import '../../domain/domain.dart';
import 'album_model.dart';

part 'albums_list_model.g.dart';

@JsonSerializable()
class NVAlbumsListModel extends NVAlbumsListEntity {

  final List<NVAlbumModel> albumsList;

  const NVAlbumsListModel({required this.albumsList}) : super(albums: albumsList);

  factory NVAlbumsListModel.fromJson(Map<String, dynamic> json) {
    return _$NVAlbumsListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NVAlbumsListModelToJson(this);

}