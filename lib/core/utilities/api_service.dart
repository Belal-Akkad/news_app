import 'package:dio/dio.dart';

class ApiService {
  ApiService({ required this.dio});
  
  final Dio dio;
  final String baseUrl = 'https://newsapi.org/v2/everything?';
  final String accessKey = 'f89e5a5f53124259a309b016e261995f';
  final String pageSize='30';

  Future<Map<String, dynamic>> getNews( String category) async {
    Response response = await dio.get(
        '${baseUrl}q=$category&apiKey=$accessKey&pageSize=$pageSize');
    return response.data;
  }
}
