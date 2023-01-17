import 'package:cozy/core.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewWidget extends StatelessWidget {
  const PhotoViewWidget(this.space, {super.key});
  final SpaceModel space;

  @override
  Widget build(BuildContext context) {
    return PhotoViewGallery.builder(
      scrollPhysics: const BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: NetworkImage(space.photos![index]),
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return const SizedBox();
          },
        );
      },
      itemCount: space.photos!.length,
    );
  }
}
