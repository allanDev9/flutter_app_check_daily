import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[900],
      padding: const EdgeInsets.all(16),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Perfil de Usuario',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(color: Colors.white54),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/activiti.jpeg'),
              ),
              SizedBox(height: 16),
              Text(
                'Nombre de Usuario',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                'Correo electrónico: usuario@example.com',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
