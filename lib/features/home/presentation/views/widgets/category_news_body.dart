import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/tile_item.dart';

class CategoryNewsBody extends StatelessWidget {
  const CategoryNewsBody({super.key, required this.news});
  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getResponsiveSize(context, 10)),
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: news.length,
              itemBuilder: (context, index, realIndex) {
                return TileItem(
                  model: news[index],
                );
              },
              options: CarouselOptions(
                padEnds: false,
                scrollPhysics: const BouncingScrollPhysics(),
                viewportFraction: 0.6,
                enableInfiniteScroll: false,
                reverse: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                pageSnapping: true,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
