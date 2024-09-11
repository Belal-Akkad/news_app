import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/presentation/manager/card_news_cubit/card_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/card_news_cubit/card_news_state.dart';
import 'package:news_app/features/home/presentation/views/widgets/category_news_body.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:news_app/features/home/presentation/views/widgets/error_message.dart';

class CategoryNewsViewBuilder extends StatelessWidget {
  const CategoryNewsViewBuilder({super.key, required this.categorName});
final String categorName;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardNewsCubit, CardNewsState>(
      builder: (context, state) {
        if (state is CardNewsSuccessState) {
          List<NewsModel> news = state.news;
          return CategoryNewsBody(news: news);
        } else if (state is CardNewsFaiulerState) {
          return ErrorMessage(errMessage: state.errMessage,categoryName: categorName);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
