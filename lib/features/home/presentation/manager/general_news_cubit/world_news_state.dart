import 'package:news_app/core/models/news_model/news_model.dart';

abstract class WorldNewsState {}

class WorldNewsInitialState extends WorldNewsState {}

class WorldNewsLoadingState extends WorldNewsState {}

class WorldNewsSuccessState extends WorldNewsState {
  final List<NewsModel> news;

  WorldNewsSuccessState({required this.news});
}

class WorldNewsFaiulerState extends WorldNewsState {
  final String errMessage;

  WorldNewsFaiulerState({required this.errMessage});
}
