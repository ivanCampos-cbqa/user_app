import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.age,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $name'),
            Text('Edad: $age'),
            Text('Ocupación: $occupation'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('Regresar a Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
