import 'package:dio/dio.dart';
import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/domain/repository/data_repository.dart';

/// Здесь надо ввставить свой appID
const String appID = "";

class NetworkDataRepository extends DataRepository {
  late final Dio _dio;

  NetworkDataRepository() {
    final options = BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 7000,
    );
    _dio = Dio(options);
  }

  @override
  Future<DataModel> fetchData() {
    String path =
        "https://api.openweathermap.org/data/2.5/weather?q=Moscow&appid=$appID&lang=ru&units=metric";
    return _dio.post(path).then((response) {
      return DataModel.fromJson(response.data["main"]);
    }).catchError((error) {
      throw error;
    });
  }
}
