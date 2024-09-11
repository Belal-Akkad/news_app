import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/constants/assets.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({super.key, required this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return imageUrl != null
        ? CachedNetworkImage(
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
            imageUrl: imageUrl!,
            placeholder: (context, url) => CustomLoadingIndicator(),
            errorWidget: (context, url, error) => Icon(
              Icons.error,
              size: getResponsiveSize(context, 45),
            ),
          )
        : Image.asset(
            Assets.assetsImagesInvalid,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          );
  }
}
