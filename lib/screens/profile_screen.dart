import 'package:app_check_daily/widgets/profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Expanded(child: Profile())]);
  }
}
