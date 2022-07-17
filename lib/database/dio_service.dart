import 'package:dio/dio.dart' as dioo;

class DioService {
  static const urlBase = 'http://localhost:3000/api';

  String apiToken = "";
  dioo.Dio dio = dioo.Dio();

  Future<DioService> init() async {
    dio.options.baseUrl = urlBase;
    dio.options.connectTimeout = 5000; //5s
    dio.options.receiveTimeout = 3000;
    return this;
  }

  Future<dioo.Response> postUrl(endPoint, body) async {
    return dio.post(
      urlBase + endPoint,
      data: body,
    );
  }

  Future<dioo.Response> get(endPoint) async {
    return dio.get(
      urlBase + endPoint,
    );
  }
}
