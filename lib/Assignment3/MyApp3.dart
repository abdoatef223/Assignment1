import 'package:flutter/material.dart';
import 'home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore The Universe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF000000),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFE03030),
          surface: Color(0xFF000000),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login':   (_) => const LoginScreen(),
        '/planets': (_) => const PlanetsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/planet-details') {
          final planet = settings.arguments as Planet;
          return MaterialPageRoute(
            builder: (_) => PlanetDetailsScreen(planet: planet),
          );
        }
        return null;
      },
    );
  }
}