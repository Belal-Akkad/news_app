import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manager/world_news_cubit/world_news_cubit.dart';
import 'package:news_app/features/home/presentation/manager/world_news_cubit/world_news_state.dart';
import 'package:news_app/features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:news_app/features/home/presentation/views/widgets/error_message.dart';
import 'package:news_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeViewBodyBuilder extends StatelessWidget {
  const HomeViewBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorldNewsCubit, WorldNewsState>(
      builder: (context, state) {
        if (state is WorldNewsSuccessState) {
          return HomeViewBody(
            news: state.news,
          );
        } else if (state is WorldNewsFaiulerState) {
          return ErrorMessage(
              errMessage: state.errMessage, categoryName: 'world');
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
