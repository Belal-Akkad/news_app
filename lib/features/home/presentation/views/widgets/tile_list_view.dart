import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/tile_item.dart';

class TileListView extends StatelessWidget {
  const TileListView({
    super.key,
    required this.news,
  });
  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: news.length,
      itemBuilder: (context, index, realIndex) {
        return TileItem(
          model: news[index],
        );
      },
      options: CarouselOptions(
        padEnds: false,
        scrollPhysics: const BouncingScrollPhysics(),
        viewportFraction: 0.75,
        enableInfiniteScroll: false,
        reverse: false,
        enlargeCenterPage: true,
        enlargeFactor: 0.4,
        pageSnapping: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
