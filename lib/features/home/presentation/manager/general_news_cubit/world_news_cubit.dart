import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/error/failures_srvice.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/data/home_repository_implementation.dart';
import 'package:news_app/features/home/presentation/manager/general_news_cubit/world_news_state.dart';

class WorldNewsCubit extends Cubit<WorldNewsState> {
  WorldNewsCubit({required this.homeRepository})
      : super(WorldNewsInitialState());

  static WorldNewsCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  final HomeRepositoryImplementation homeRepository;
  Future<void> fetchNews(String category) async {
    emit(WorldNewsLoadingState());

    Either<ServerFailure, List<NewsModel>> result =
        await homeRepository.fetchNews(category);
    result.fold((failure) {
      
      emit(WorldNewsFaiulerState(errMessage: failure.errMessage));
      
    }, (news) {
      emit(WorldNewsSuccessState(news: news));
    });
  }
}
