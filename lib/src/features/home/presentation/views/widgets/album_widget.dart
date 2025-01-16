import 'package:ass_navatech/src/features/home/domain/domain.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../bloc/photo_states.dart';

class NVAlbumWidget extends StatelessWidget {

  final NVAlbumEntity album;
  final NVPhotoStates photos;

  const NVAlbumWidget({super.key, required this.album, required this.photos});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(album.title),
        const SizedBox(height: 20),
        _Photos(state: photos),
        const SizedBox(height: 20),
        const Divider()
      ],
    );
  }

}


class _Photos extends StatelessWidget {

  final NVPhotoStates state;

  const _Photos({required this.state});

  @override
  Widget build(BuildContext context) {
    if(state is NVPhotoError) return _Error();
    if(state is NVPhotoLoading) return _Loading();
    if(state is NVPhotoSuccess) return _Success(photos: (state as NVPhotoSuccess).photos);
    return const SizedBox();
  }

}


class _Error extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Oops! Couldn't load photos."),
    );
  }

}


class _Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator()
    );
  }

}


class _Success extends StatelessWidget {

  final List<NVPhotoEntity> photos;

  const _Success({required this.photos});

  static const _imageSize = 60.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _imageSize,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          height: 80,
          width: 80,
          child: CachedNetworkImage(
            progressIndicatorBuilder: (__, $, _) => const CircularProgressIndicator(),
            imageUrl: photos[index%photos.length].url,
            errorWidget: (__, $, _) => const Icon(
              Icons.hide_image_outlined,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }

}