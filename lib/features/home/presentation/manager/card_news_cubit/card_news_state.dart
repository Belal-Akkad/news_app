import 'package:news_app/core/models/news_model/news_model.dart';

abstract class CardNewsState {}

class CardNewsInitialState extends CardNewsState {}

class CardNewsLoadingState extends CardNewsState {}

class CardNewsSuccessState extends CardNewsState {
  final List<NewsModel> news;

  CardNewsSuccessState({required this.news});
}

class CardNewsFaiulerState extends CardNewsState {
final String errMessage;

  CardNewsFaiulerState({required this.errMessage});

}
