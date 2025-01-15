import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import 'photo_events.dart';
import 'photo_states.dart';

class NVPhotosBloc extends Bloc<NVPhotoEvents, NVPhotoStates> {

  final GetPhotosUseCase getPhotos;

  final _albumsTally = <int, NVPhotosListEntity>{};

  NVPhotosBloc({required this.getPhotos}): super(NVPhotoNone()) {
    on<NVGetPhotos>(_getPhotosForAlbum);
  }

  void _getPhotosForAlbum(NVGetPhotos e, Emitter<NVPhotoStates> emit) async {
    if(_albumsTally.containsKey(e.albumId)) {
      emit(NVPhotoSuccess(photos: _albumsTally[e.albumId]!.photos));
      return;
    }
    emit(NVPhotoLoading());
    final response = await getPhotos(GetPhotosParams(id: e.albumId));
    response.fold(
      (l) => emit(NVPhotoError()),
      (r) {
        _albumsTally[e.albumId] = r;
        emit(NVPhotoSuccess(photos: r.photos));
      }
    );
  }

}