import 'package:flutter/material.dart';
import 'planet_model.dart';
import 'palnet_details.dart';
import 'appbar.dart';
import 'buttons.dart';

class PlanetsScreen extends StatefulWidget {
  const PlanetsScreen({super.key});

  @override
  State<PlanetsScreen> createState() => _PlanetsScreenState();
}

class _PlanetsScreenState extends State<PlanetsScreen> {
  int currentIndex = 0;

  void _previous() {
    setState(() {
      currentIndex = (currentIndex - 1 + planets.length) % planets.length;
    });
  }

  void _next() {
    setState(() {
      currentIndex = (currentIndex + 1) % planets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final planet = planets[currentIndex];

    return Scaffold(
      appBar: buildAppBar(context, 'Explore'),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Which planet\nwould you like to explore?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
              ),
            ),
          ),

          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (child, anim) =>
                  FadeTransition(opacity: anim, child: child),
              child: SizedBox(
                key: ValueKey(planet.name),
                width: double.infinity,
                child: Image.asset(
                  planet.imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const Center(
                    child: Icon(Icons.public, size: 200, color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircleIconButton(
                  onTap: _previous,
                  fallbackIcon: Icons.arrow_back,
                  imagePath: 'assets/images/solarsystem/leftbutton.png',
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    planet.name,
                    key: ValueKey(planet.name),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                buildCircleIconButton(
                  onTap: _next,
                  fallbackIcon: Icons.arrow_forward,
                  imagePath: 'assets/images/solarsystem/rightbutton.png',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 36),
            child: buildExploreButton(
              label: 'Explore ${planet.name}',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PlanetDetailsScreen(planet: planet),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}