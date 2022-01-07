import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/domain/repository/data_repository.dart';

Future<DataModel> fetchData(DataRepository dataRepository) async {
  return await dataRepository.fetchData();
}
