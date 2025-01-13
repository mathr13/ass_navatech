// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NVPhotosListModel _$NVPhotosListModelFromJson(Map<String, dynamic> json) =>
    NVPhotosListModel(
      photos: (json['photos'] as List<dynamic>)
          .map((e) => NVPhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NVPhotosListModelToJson(NVPhotosListModel instance) =>
    <String, dynamic>{
      'photos': instance.photos,
    };
