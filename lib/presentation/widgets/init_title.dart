import 'package:flutter/material.dart';

class InitTitle extends StatelessWidget {
  const InitTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Обновите данные",
      style: TextStyle(
        color: Colors.green,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
