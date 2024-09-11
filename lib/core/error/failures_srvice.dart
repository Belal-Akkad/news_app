import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;
  Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection Timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive Timeout With ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadREsponse(dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request To ApiServer Was Canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Connection Error with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'There Was An Error, Plase Try Later!');
    }
  }
  factory ServerFailure.fromBadREsponse(Map<String, dynamic> response) {
    return ServerFailure(errMessage: response['message']);
  }
}
