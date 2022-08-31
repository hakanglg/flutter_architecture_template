import 'package:dio/dio.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  NetworkManager._init() {
    final baseOptions = BaseOptions(baseUrl: 'https://api.github.com', headers: {});
    final dio = Dio(baseOptions);
  }
}
