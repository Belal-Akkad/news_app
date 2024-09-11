import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/constants/assets.dart';
import 'package:news_app/core/models/card_item_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/card_item.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
  });
  static const List items = [
    CardItemModel(image: Assets.assetsImagesBusiness, title: 'Business'),
    CardItemModel(
        image: Assets.assetsImagesEntertaiment, title: 'Entertaiment'),
    CardItemModel(image: Assets.assetsImagesHealth, title: 'Health'),
    CardItemModel(image: Assets.assetsImagesScience, title: 'Science'),
    CardItemModel(image: Assets.assetsImagesSports, title: 'Sports'),
    CardItemModel(image: Assets.assetsImagesTechnology, title: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CarouselSlider.builder(
      itemCount: 6,
      itemBuilder: (context, index, realIndex) {
        return CardItem(
          model: items[index],
        );
      },
      options: CarouselOptions(
        height: height / 6,
        viewportFraction: width < 800 ? 0.6 : 0.5,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        enlargeFactor: 0.3,
        pageSnapping: true,
      ),
    );
  }
}
