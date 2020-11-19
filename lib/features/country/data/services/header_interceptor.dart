import 'dart:async';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String AUTH_HEADER = 'X-RapidAPI-Key';

  static const String API_KEY =
      'a31f2b2848mshe9fab45ef56d6c6p13dcb8jsn41dd996384ce';

  @override
  FutureOr<Request> onRequest(Request request) async {
    // 5
    Request newRequest = request.copyWith(
      headers: {
        AUTH_HEADER: API_KEY,
      },
    );
    return newRequest;
  }
}
