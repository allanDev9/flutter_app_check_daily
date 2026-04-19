import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 12),
        Text('Tasks', style: TextStyle(fontSize: 24, color: Colors.white)),
      ],
    );
  }
}
