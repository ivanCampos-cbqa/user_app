import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: 'Edad'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _occupationController,
              decoration: const InputDecoration(labelText: 'Ocupación'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.go(
                  '/profile',
                  extra: {
                    'name': _nameController.text,
                    'age': _ageController.text,
                    'occupation': _occupationController.text,
                  },
                );
              },
              child: const Text('Guardar y Ver Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
