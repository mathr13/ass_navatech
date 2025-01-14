// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NVAlbumsListModel _$NVAlbumsListModelFromJson(Map<String, dynamic> json) =>
    NVAlbumsListModel(
      albumsList: (json['albumsList'] as List<dynamic>)
          .map((e) => NVAlbumModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NVAlbumsListModelToJson(NVAlbumsListModel instance) =>
    <String, dynamic>{
      'albumsList': instance.albumsList,
    };
