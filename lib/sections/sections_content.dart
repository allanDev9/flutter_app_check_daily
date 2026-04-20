import 'package:flutter/material.dart';

//screens
import 'package:app_check_daily/screens/activities_screen.dart';
import 'package:app_check_daily/screens/profile_screen.dart';
import 'package:app_check_daily/screens/projects_screen.dart';
import 'package:app_check_daily/screens/tasks_screen.dart';

class SectionsContent extends StatefulWidget {
  const SectionsContent({super.key});

  @override
  State<SectionsContent> createState() => _SectionsContentState();
}

class _SectionsContentState extends State<SectionsContent> {
  int _selectedIndex = 0;

  Widget _buildContent() {
    switch (_selectedIndex) {
      case 0:
        return const ActivitiesScreen();
      case 1:
        return const ProjectsScreen();
      case 2:
        return const TasksScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const ActivitiesScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 212, 211, 211),
        title: const Text(
          'Check Daily',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildContent(),
      backgroundColor: const Color.fromARGB(81, 12, 11, 11),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(255, 212, 211, 211),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.check), label: 'Activities'),
          NavigationDestination(icon: Icon(Icons.folder), label: 'Projects'),
          NavigationDestination(icon: Icon(Icons.task), label: 'Tasks'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
