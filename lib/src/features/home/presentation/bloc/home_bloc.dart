import 'package:ass_navatech/src/core/interfaces/parameters_interface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import 'home_events.dart';
import 'home_states.dart';

class NVHomeBloc extends Bloc<NVHomeEvent, NVHomeState> {

  final GetAlbumsUseCase getAlbums;

  NVHomeBloc({required this.getAlbums}) : super(NVHomeNone()) {
    on<NVGetAlbums>(_getAllAlbums);
  }

  void _getAllAlbums(NVHomeEvent _, Emitter<NVHomeState> emit) async {
    emit(NVHomeLoading());
    final response = await getAlbums(NoParameters());
    response.fold(
      (l) => emit(NVHomeError()),
      (r) => emit(NVHomeSuccess(library: r))
    );
  }
}