import 'dart:convert';

import 'package:dio/dio.dart';

import '../../core/shared/contants/api.dart';
import '../http/http_client.dart';
import '../http/http_error.dart';

class DioAdapter implements IHttpClient {
  final Dio dio;

  DioAdapter(this.dio);

  @override
  Future<Map> request({
    required String endpoint,
    required String method,
    Map<String, dynamic>? body,
    dynamic data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    late Response<dynamic> dioResponse;

    Map<String, String> defaultHeaders = {
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final jsonBody = body != null ? jsonEncode(body) : {};

    final url = "${Api.baseUrl}$endpoint";

    try {
      switch (method) {
        case 'get':
          dioResponse = await dio.get(
            url,
            queryParameters: queryParameters,
            options: Options(
              headers: headers ?? defaultHeaders,
            ),
          );
          break;
        case 'delete':
          dioResponse = await dio.delete(
            url,
            options: Options(
              headers: headers ?? defaultHeaders,
            ),
          );
          break;
        case 'post':
          dioResponse = await dio.post(
            url,
            options: Options(
              headers: headers ?? defaultHeaders,
            ),
            data: data ?? jsonBody,
          );
          break;
        case 'put':
          dioResponse = await dio.put(
            url,
            options: Options(
              headers: headers ?? defaultHeaders,
            ),
            data: jsonBody,
          );
          break;
      }
    } catch (e) {
      dynamic error = e;
      throw _handleResponse(error.response);
    }
    return _handleResponse(dioResponse);
  }

  Map _handleResponse(Response response) {
    switch (response.statusCode) {
      case 201:
        return response.data as Map;
      case 200:
        return response.data as Map;
      case 400:
        throw HttpError.badRequest;
      case 401:
        throw HttpError.unauthorized;
      case 404:
        throw HttpError.notFound;
      default:
        throw HttpError.serverError;
    }
  }
}
