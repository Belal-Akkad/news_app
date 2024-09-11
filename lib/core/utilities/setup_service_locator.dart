import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/utilities/api_service.dart';
import 'package:news_app/features/home/data/home_repository_implementation.dart';

GetIt getIt = GetIt.instance;
void setupServiceLoacator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepositoryImplementation>(
      HomeRepositoryImplementation(apiService: getIt.get<ApiService>()));
}
