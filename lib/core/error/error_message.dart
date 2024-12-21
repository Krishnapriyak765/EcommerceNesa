import 'package:dio/dio.dart';

String _handleDioError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return "Connection timed out. Please check your internet connection.";
    case DioExceptionType.sendTimeout:
      return "Send request timed out. Please try again.";
    case DioExceptionType.receiveTimeout:
      return "Response timed out. Please check your network connection.";
    case DioExceptionType.cancel:
      return "Request was cancelled.";
    case DioExceptionType.connectionError:
      if (error.message!.contains("SocketException")) {
        return "Network error. Please check your internet connection.";
      }
      return "An unexpected network error occurred.";
    default:
      return "An unknown error occurred.";
  }
}
