import 'dart:convert';
import 'package:ark_module_setup/ark_module_setup.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ArkMainRemoteDataSourceImpl implements ArkMainRemoteDataSource {
  late Dio dio;
  ArkMainRemoteDataSourceImpl({Dio? dio}) {
    this.dio = dio ?? Dio();
  }
  @override
  Future<RemoteConfigDTO> getRemoteConfig() async {
    final prefs = await SharedPreferences.getInstance();
    final response = await dio.get(remoteConfigUrl);
    int code = response.statusCode ?? 500;
    if (code >= 500) {
      throw CustomException(code, 'Error... failed connect to server');
    } else if (code != 200) {
      throw CustomException(
          code, response.data['message'] ?? 'Failed... Please try again');
    } else {
      final data = json.encode(response.data);
      await prefs.setString("remote_config", data);
      return RemoteConfigDTO.fromJson(response.data);
    }
  }
}
