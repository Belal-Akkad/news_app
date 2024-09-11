import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/views/widgets/card_list_view.dart';
import 'package:news_app/features/home/presentation/views/widgets/tile_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.news,
  });
  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getResponsiveSize(context, 12),
          vertical: getResponsiveSize(context, 12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CardListView(),
          const SizedBox(height: 10),
          Text('World News : ',
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          Expanded(
            child: TileListView(news: news),
          ),
        ],
      ),
    );
  }
}
