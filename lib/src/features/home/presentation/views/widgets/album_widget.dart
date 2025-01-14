import 'package:ass_navatech/src/features/home/domain/domain.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NVAlbumWidget extends StatelessWidget {

  final NVAlbumEntity album;
  final List<NVPhotoEntity> photos;

  const NVAlbumWidget({super.key, required this.album, required this.photos});

  static const _imageSize = 60.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(album.title),
        const Divider(),
        SizedBox(
          height: _imageSize,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CachedNetworkImage(
              progressIndicatorBuilder: (__, $, _) => const CircularProgressIndicator(),
              imageUrl: photos[index].url,
              errorWidget: (__, $, _) => const Text("Error!"),
            ),
          ),
        )
      ],
    );
  }

}