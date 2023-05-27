abstract class IHttpClient {
  Future<Map> request({
    required String endpoint,
    required String method,
    Map<String, dynamic>? body,
    dynamic data,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
