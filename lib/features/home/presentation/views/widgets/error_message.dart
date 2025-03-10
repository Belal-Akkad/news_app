import 'package:flutter/material.dart';
import 'package:news_app/features/home/presentation/manager/card_news_cubit/card_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/world_news_cubit/world_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/them_cubit/theme_cubit.dart';
import 'package:shimmer/shimmer.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage(
      {super.key, required this.errMessage, required this.categoryName});
  final String errMessage;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    var themeCubit = ThemeCubit.get(context);
    bool isDark = themeCubit.isDark;

    return LiquidPullToRefresh(
      backgroundColor: isDark ? Colors.black : Colors.white,
      color: isDark ? Colors.orange : Colors.lightBlueAccent,
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        if (categoryName == 'world') {
          WorldNewsCubit.get(context).fetchNews(categoryName);
        } else {
          CardNewsCubit.get(context).fetchNews(categoryName);
        }
      },
      child: ListView(
        children: [
          Shimmer.fromColors(
            baseColor: isDark ? Colors.orange : Colors.lightBlueAccent,
            highlightColor: isDark ? Colors.white : Colors.black,
            child: Padding(
              padding: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height -
                          (MediaQuery.of(context).padding.top +
                              kToolbarHeight)) /
                      2),
              child: Center(child: Text(errMessage)),
            ),
          ),
        ],
      ),
    );
  }
}
