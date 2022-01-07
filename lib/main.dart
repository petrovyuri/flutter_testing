import 'package:flutter/material.dart';
import 'package:innopolis_test/presentation/app_screen.dart';

import 'data/network_data_repository.dart';

void main() {
  final dataRepository = NetworkDataRepository();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppScreen(repository: dataRepository),
  ));
}
