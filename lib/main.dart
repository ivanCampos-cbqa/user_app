import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'screens/create_profile_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/create-profile',
      builder: (context, state) => const CreateProfileScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) {
        final params = state.extra as Map<String, String>;
        return ProfileScreen(
          name: params['name']!,
          age: params['age']!,
          occupation: params['occupation']!,
        );
      },
    ),
  ],
);
