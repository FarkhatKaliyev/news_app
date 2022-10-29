import 'package:dio/dio.dart';

class ApiRepository {
  static const String url = 'https://newsapi.org/v2/';
  static const String apiKey = '44c698a45d004eaca11a2d3a8dbd79bf';
  static Dio dio = initializeDio();
}

initializeDio() {
  var dio = Dio();
  dio.options.baseUrl = ApiRepository.url;
  dio.interceptors.add(AppInterceptor());
  return dio;
}

class AppInterceptor extends Interceptor {
  @override
  void onRequest(options, handler) async {
    options.queryParameters.addAll({
      'apiKey': ApiRepository.apiKey,
      'from': '2022-09-28',
      'sortBy': 'publishedAt',
    });

    return handler.next(options);
  }
}
