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
        backgroundColor: Colors.white70,
        title: const Text('Check Daily'),
      ),
      body: Center(child: _buildContent()),
      backgroundColor: const Color.fromARGB(255, 91, 90, 90),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.check), label: 'Activities'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        backgroundColor: const Color.fromARGB(118, 19, 19, 19),
      ),
    );
  }
}
