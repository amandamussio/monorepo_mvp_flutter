import 'package:dio/dio.dart';

abstract class Failure implements Exception {
  String? get message;
}

class DioFailure extends Failure implements DioError {

  final String? message;
  late final int? statusCode;

  DioFailure(DioError err, {this.message}) {
    statusCode = err.response?.statusCode ?? 400;
    type = err.type;
    error = err.error;
    requestOptions = err.requestOptions;
    response = err.response;
    stackTrace = err.stackTrace;
    type = err.type;
  }

  @override
  var error;

  @override
  late RequestOptions requestOptions;

  @override
  Response? response;

  @override
  StackTrace? stackTrace;

  @override
  late DioErrorType type;

  @override
  String get message => msg ?? response?.statusMessage ?? '';

  @override
  DioError copyWith({RequestOptions? requestOptions, Response? response, DioErrorType? type, Object? error, StackTrace? stackTrace, String? message}) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}

class DefaultFailure extends Failure {
  @override
  final String? message;
  DefaultFailure({
    this.message,
  });
}

class DatasourceError extends Failure {
  @override
  final String? message;
  DatasourceError({
    this.message,
  });
}

class RepositoryFailure extends Failure {
  @override
  final String? message;
  RepositoryFailure({
    this.message,
  });
}