import 'package:flutter/material.dart';
import 'package:innopolis_test/domain/model/data_model.dart';

import '../../utilits/utilities.dart';

class BodyPage extends StatelessWidget {
  final DataModel? dataModel;

  const BodyPage({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Москва",
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        _RowData(
          data: Utilities.convertHumanTemp(dataModel?.temp),
          label: "Температура",
        ),
      ],
    );
  }
}

class _RowData extends StatelessWidget {
  final String label;
  final String data;

  const _RowData({
    Key? key,
    required this.label,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          data,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
