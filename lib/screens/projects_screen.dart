import 'package:app_check_daily/widgets/projects.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Expanded(child: Projects())]);
  }
}
