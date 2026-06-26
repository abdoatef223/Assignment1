class Planet {
  final String name;
  final String imagePath;
  final String modelPath; // used if/when the 3D model viewer is enabled
  final String description;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  const Planet({
    required this.name,
    required this.imagePath,
    this.modelPath = '',
    required this.description,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}

const List<Planet> planets = [
  Planet(
    name: 'Sun',
    imagePath: 'assets/images/solarsystem/sun.png',
    modelPath: 'assets/models/sun.glb',
    description:
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distanceFromSun: '0 km',
    lengthOfDay: '0 h',
    orbitalPeriod: '0 Earth years',
    radius: '695,700 km',
    mass: '1.989 × 10³⁰ kg',
    gravity: '274 m/s²',
    surfaceArea: '6.09 × 10¹² km²',
  ),
  Planet(
    name: 'Mercury',
    imagePath: 'assets/images/solarsystem/mercury.png',
    modelPath: 'assets/models/mercury.glb',
    description:
        'Mercury is the smallest planet in our solar system and the closest '
        'to the Sun. It has a rocky, heavily cratered surface and almost no '
        'atmosphere, leading to extreme temperature swings between day and night.',
    distanceFromSun: '57,900,000 km',
    lengthOfDay: '4,222.6 h',
    orbitalPeriod: '0.24 Earth years',
    radius: '2,439.7 km',
    mass: '3.30 x 10^23 kg',
    gravity: '3.7 m/s²',
    surfaceArea: '74,800,000 km²',
  ),
  Planet(
    name: 'Venus',
    imagePath: 'assets/images/solarsystem/venus.png',
    modelPath: 'assets/models/venus.glb',
    description:
        "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    distanceFromSun: '108,200,000 km',
    lengthOfDay: '2,802 h',
    orbitalPeriod: '0.62 Earth years',
    radius: '6,051.8 km',
    mass: '4.87 x 10^24 kg',
    gravity: '8.9 m/s²',
    surfaceArea: '460,200,000 km²',
  ),
  Planet(
    name: 'Earth',
    imagePath: 'assets/images/solarsystem/earth.png',
    modelPath: 'assets/models/earth.glb',
    description:
        "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    distanceFromSun: '149,600,000 km',
    lengthOfDay: '24 h',
    orbitalPeriod: '1 Earth years',
    radius: '6,371 km',
    mass: '5.97 x 10^24 kg',
    gravity: '9.8 m/s²',
    surfaceArea: '510,100,000 km²',
  ),
  Planet(
    name: 'Mars',
    imagePath: 'assets/images/solarsystem/mars.png',
    modelPath: 'assets/models/mars.glb',
    description:
       "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    distanceFromSun: '227,900,000 km',
    lengthOfDay: '24.7 h',
    orbitalPeriod: '1.88 Earth years',
    radius: '3,389.5 km',
    mass: '6.42 x 10^23 kg',
    gravity: '3.7 m/s²',
    surfaceArea: '144,800,000 km²',
  ),
  Planet(
    name: 'Jupiter',
    imagePath: 'assets/images/solarsystem/jupiter.png',
    modelPath: 'assets/models/jupiter.glb',
    description:
        "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    distanceFromSun: '778,500,000 km',
    lengthOfDay: '9.9 h',
    orbitalPeriod: '11.86 Earth years',
    radius: '69,911 km',
    mass: '1.90 x 10^27 kg',
    gravity: '23.1 m/s²',
    surfaceArea: '61,420,000,000 km²',
  ),
  Planet(
    name: 'Saturn',
    imagePath: 'assets/images/solarsystem/saturn.png',
    modelPath: 'assets/models/saturn.glb',
    description:
        "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    distanceFromSun: '1,434,000,000 km',
    lengthOfDay: '10.7 h',
    orbitalPeriod: '29.45 Earth years',
    radius: '58,232 km',
    mass: '5.68 x 10^26 kg',
    gravity: '9.0 m/s²',
    surfaceArea: '42,700,000,000 km²',
  ),
  Planet(
    name: 'Uranus',
    imagePath: 'assets/images/solarsystem/uranus.png',
    modelPath: 'assets/models/uranus.glb',
    description:
        "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    distanceFromSun: '2,871,000,000 km',
    lengthOfDay: '17.2 h',
    orbitalPeriod: '84.02 Earth years',
    radius: '25,362 km',
    mass: '8.68 x 10^25 kg',
    gravity: '8.7 m/s²',
    surfaceArea: '8,083,000,000 km²',
  ),
  Planet(
    name: 'Neptune',
    imagePath: 'assets/images/solarsystem/neptune.png',
    modelPath: 'assets/models/neptune.glb',
    description:
        "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    distanceFromSun: '4,495,000,000 km',
    lengthOfDay: '16.1 h',
    orbitalPeriod: '164.79 Earth years',
    radius: '24,622 km',
    mass: '1.02 x 10^26 kg',
    gravity: '11.0 m/s²',
    surfaceArea: '7,618,000,000 km²',
  ),
];
