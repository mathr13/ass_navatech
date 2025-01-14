import 'package:ass_navatech/src/features/home/domain/domain.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injections.dart';
import '../../bloc/bloc.dart';
import '../widgets/album_widget.dart';

@RoutePage()
class NVHomeScreen extends StatelessWidget {

  static const route = "/home";

  const NVHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NVHomeBloc>(
        create: (context) => injector()..add(NVGetAlbums()),
        child: BlocBuilder<NVHomeBloc, NVHomeState>(
          builder: (context, state) {
            if(state is NVHomeLoading) return _Loading();
            if(state is NVHomeError) return _Error();
            if(state is NVHomeSuccess) return _Success(albums: state.library.albums);
            return _None();
          },
        ),
      ),
    );
  }

}


class _None extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

}


class _Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

}


class _Error extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Text("Something went wrong!");
  }

}


class _Success extends StatelessWidget {

  final List<NVAlbumEntity> albums;

  const _Success({required this.albums});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final album = albums[index%albums.length];
            injector<NVHomeBloc>().add(NVGetPhotos(albumId: album.id));
            return NVAlbumWidget(
              album: album,
              photos: [],
            );
          },
        )
      ),
    );
  }

}