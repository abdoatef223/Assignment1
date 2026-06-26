import 'package:flutter/material.dart';
import 'planet_model.dart';
import 'appbar.dart';
import 'planet_viewer.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: buildAppBar(context, planet.name, showBack: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
              child: Text(
                '${planet.name}: ${_getPlanetSubtitle(planet.name)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            PlanetModelViewer(planet: planet),

            const Padding(
              padding: EdgeInsets.fromLTRB(24, 28, 24, 8),
              child: Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.transparent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                planet.description,
                style: const TextStyle(
                  color: Color(0xFFCCCCCC),
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 24),

            StatRow(label: 'Distance from Sun (km)', value: planet.distanceFromSun),
            StatRow(label: 'Length of Day (hours)',  value: planet.lengthOfDay),
            StatRow(label: 'Orbital Period (Earth years)', value: planet.orbitalPeriod),
            StatRow(label: 'Radius (km)',             value: planet.radius),
            StatRow(label: 'Mass (kg)',               value: planet.mass),
            StatRow(label: 'Gravity (m/s²)',          value: planet.gravity),
            StatRow(label: 'Surface Area (km²)',      value: planet.surfaceArea),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  String _getPlanetSubtitle(String name) {
    const subtitles = {
      'Mercury': 'The Swift Planet',
      'Venus':   'The Evening Star',
      'Earth':   'Our Blue Marble',
      'Mars':    'The Red Planet',
      'Jupiter': 'The Giant Planet',
      'Saturn':  'The Ringed Planet',
      'Uranus':  'The Ice Giant',
      'Neptune': 'The Windy Planet',
    };
    return subtitles[name] ?? name;
  }
}