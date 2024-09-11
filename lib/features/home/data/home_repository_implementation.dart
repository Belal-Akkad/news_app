import 'package:dio/dio.dart';
import 'package:news_app/core/error/failures_srvice.dart';
import 'package:news_app/core/models/news_model/news_model.dart';
import 'package:news_app/core/utilities/api_service.dart';
import 'package:news_app/features/home/data/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementation implements HomeRepository {
  HomeRepositoryImplementation({required this.apiService});
  final ApiService apiService;

  @override
  Future<Either<ServerFailure, List<NewsModel>>> fetchNews(
      String category) async {
    try {
      Map<String, dynamic> data = await apiService.getNews(category);
      List<dynamic> items = data['articles'];
      List<NewsModel> news = [];
      for (dynamic item in items) {
        news.add(NewsModel.fromJson(item));
      }
      return right(news);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(
            ServerFailure(errMessage: 'There Was An Error Please Try Later!'));
      }
    }
  }
}
