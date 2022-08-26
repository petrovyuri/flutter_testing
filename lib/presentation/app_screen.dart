import 'package:flutter/material.dart';
import 'package:innopolis_test/data/mock_data_repository.dart';
import 'package:innopolis_test/domain/model/data_model.dart';
import 'package:innopolis_test/presentation/widgets/init_title.dart';

import '../data/network_data_repository.dart';
import 'widgets/data_page.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  Future<DataModel>? futureDataModel;
  final dataRepository = MockDataRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FriFlex Тестирование"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            futureDataModel = dataRepository.fetchData();
          });
        },
        child: const Icon(Icons.get_app_sharp),
      ),
      body: FutureBuilder<DataModel>(
        future: futureDataModel,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.data != null) {
            return BodyPage(dataModel: snapshot.data);
          }

          return const InitTitle();
        },
      ),
    );
  }
}
