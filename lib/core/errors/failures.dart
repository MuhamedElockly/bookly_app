import 'package:dio/dio.dart';

abstract class Failure {
  final errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive TimeOut With ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Connection TimeOut With ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Connection to api cancelled');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Un expected error');
      case DioExceptionType.unknown:
        return ServerFailure('Un expected error');
      default:
        return ServerFailure('Ops ,please try again !');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic respnse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 4003) {
      return ServerFailure(respnse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Method not found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error');
    } else {
      return ServerFailure('Ops ,please try again !');
    }
  }
}
