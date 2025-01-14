import '../../domain/domain.dart';

sealed class NVHomeState {

  const NVHomeState();

}

final class NVHomeNone extends NVHomeState {}

final class NVHomeLoading extends NVHomeState {}

final class NVHomeError extends NVHomeState {}

final class NVHomeSuccess extends NVHomeState {

  final NVAlbumsListEntity library;

  const NVHomeSuccess({required this.library});

}