import 'package:innopolis_test/domain/model/data_model.dart';

abstract class DataRepository {
  Future<DataModel> fetchData();
}
