import 'package:equatable/equatable.dart';

class NVAlbumEntity extends Equatable {

  final int userId;
  final int id;
  final String title;

  const NVAlbumEntity(
    {
      required this.userId,
      required this.id,
      required this.title
    }
  );

  @override
  List<Object?> get props => [id];

}