import 'package:ass_navatech/src/features/home/domain/domain.dart';

sealed class NVPhotoStates {

  const NVPhotoStates();

}


final class NVPhotoNone extends NVPhotoStates {}

final class NVPhotoLoading extends NVPhotoStates {}

final class NVPhotoError extends NVPhotoStates {}

final class NVPhotoSuccess extends NVPhotoStates {

  final List<NVPhotoEntity> photos;

  const NVPhotoSuccess({required this.photos});

}