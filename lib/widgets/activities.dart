import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: const Text('Activities'),
    );
  }
}
