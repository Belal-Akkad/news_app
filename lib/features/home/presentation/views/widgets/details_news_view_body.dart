
import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/sliver_main_section.dart';
import 'package:news_app/features/home/presentation/views/widgets/sliver_news_item_header.dart';

class DetailsNewsViewBody extends StatelessWidget {
  const DetailsNewsViewBody({super.key, required this.model});
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    final maxScreenSizeHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
          delegate: SingleNewsItemHeaderDelegate(
            imageUrl: model.urlToImage,
            maxExtent: maxScreenSizeHeight / 2,
            minExtent: 0,
          ),
        ),
        SliverMainSection(model: model)
      ],
    );
  }
}
