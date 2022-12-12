import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    final fallbackImage = SvgPicture.asset(
      AssetPath.svgNoImage,
      width: width,
      height: height,
      fit: boxFit ?? BoxFit.contain,
    );

    return Image.network(
      url,
      fit: boxFit,
      width: width,
      height: height,
      headers: headers,
      errorBuilder: (context, error, stackTrace) {
        return fallbackImage;
      },
      loadingBuilder: (context, child, loadingProgress) {
        return Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        );
      },
    );
  }
}
