import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_cached_network_image.dart';

class SingleNewsItemHeaderDelegate extends SliverPersistentHeaderDelegate {
  const SingleNewsItemHeaderDelegate({
    required this.imageUrl,
    required this.maxExtent,
    required this.minExtent,
  });

  @override
  final double maxExtent;
  @override
  final double minExtent;
  final String? imageUrl;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: CustomCachedNetworkImage(imageUrl: imageUrl)
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
