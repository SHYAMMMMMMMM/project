import 'package:dio/dio.dart';
import 'package:flutter_project/loginresponse.dart';
import 'package:flutter_project/registerresponse.dart';
import 'package:flutter_project/url.dart';

class ApiClass {
  static ApiClass instance = ApiClass();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();

  ApiClass() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
    );
  }

  Future<Registerresponse?> registerUserApi(FormData formData) async {
    print("hello");
    try {
      final result = await dio.post(url.registerEndpoint, data: formData);
      print("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR $result");
      return Registerresponse.fromJson(result.data);
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  Future<Loginresponse?> loginUserApi(FormData formData) async {
    print("hellooo");
    try {
      final result = await dio.post(url.loginEndpoint, data: formData);
      print("sssssssssssssssssssss $result");
      return Loginresponse.fromJson(result.data);
    } on DioError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}
