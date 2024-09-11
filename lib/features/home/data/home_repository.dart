import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures_srvice.dart';
import 'package:news_app/core/models/news_model/news_model.dart';

abstract class HomeRepository {
   Future<Either<ServerFailure, List<NewsModel>>> fetchNews(String category);
}
