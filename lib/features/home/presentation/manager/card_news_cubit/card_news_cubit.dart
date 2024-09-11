import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/error/failures_srvice.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/features/home/data/home_repository_implementation.dart';
import 'package:news_app/features/home/presentation/manager/card_news_cubit/card_news_state.dart';

class CardNewsCubit extends Cubit<CardNewsState> {
  final HomeRepositoryImplementation homeRepository;

  CardNewsCubit({required this.homeRepository}) : super(CardNewsInitialState());
  static CardNewsCubit get(context) {
    return BlocProvider.of(context);
  }

  Future<void> fetchNews(String category) async {
    emit(CardNewsLoadingState());
    Either<ServerFailure, List<NewsModel>> result =
        await homeRepository.fetchNews(category);
    result.fold(
      (failure) {
        emit(CardNewsFaiulerState(errMessage: failure.errMessage));
      },
      (news) {
        emit(CardNewsSuccessState(news: news));
      },
    );
  }
}
