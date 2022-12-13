import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../main/constant/asset_path.dart';

class NetworkImageAtom extends StatelessWidget {
  const NetworkImageAtom({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.boxFit,
    this.headers,
  });

  final String url;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final Map<String, String>? headers;

  @override
  Widget build(BuildContext context) {
    final fallbackImage = Image.asset(
      AssetPath.pngNoImage,
      width: width,
      height: height,
      fit: boxFit ?? BoxFit.contain,
    );

    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit,
      width: width,
      height: height,
      fadeInCurve: Curves.easeInOut,
      fadeInDuration: const Duration(seconds: 1),
      progressIndicatorBuilder: (context, url, progress) {
        return Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          color: Colors.black.withOpacity(.3),
          child: SizedBox(
            width: width != null ? width! * .4 : null,
            height: height != null ? height! * .4 : null,
            child: CircularProgressIndicator(
              value: progress.progress,
              strokeWidth: 10,
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Image.asset(AssetPath.pngNoImage);
      },
    );
  }
}
