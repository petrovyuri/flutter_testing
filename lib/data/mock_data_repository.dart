import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/domain/repository/data_repository.dart';

class MockDataRepository implements DataRepository {
  @override
  Future<DataModel> fetchData() =>
      Future(() => const DataModel(temp: 36.3));
}
