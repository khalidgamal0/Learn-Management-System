import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://insrvs.com/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> postData({
    required String endPoint,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'ApiKey':
      'U4z6cJck3BUNyz5jraU1uixD3YWMVIHRqA6hBE3zB2I71YM5DfSxoZyqGXXBTlca'
    };
    return dio!.post(
      endPoint,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'ApiKey':'U4z6cJck3BUNyz5jraU1uixD3YWMVIHRqA6hBE3zB2I71YM5DfSxoZyqGXXBTlca',
    };
    return await dio!.get(endPoint, queryParameters: query);
  }

  static Future<Response> putData({
    @required String? methodUrl,
    Map<String, dynamic>? query,
    @required Map<String, dynamic>? data,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      'Content-Type': 'application/json',
      'Authorization': token ?? '',
    };
    return dio!.put(
      methodUrl!,
      queryParameters: query,
      data: data,
    );
  }
}
