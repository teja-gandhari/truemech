import 'package:flutter/material.dart';

import 'custom_intro.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomIntro(
      name1: 'Roadside Assistance',
      imageLink: 'assets/images/20250912_161326.png',
      fontSize: 24,
      name2:
          'Get help instantly when you need it. Our network of professionals is ready 24/7 to assist you wherever you are.',
    );
  }
}

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomIntro(
      name1: 'Fuel Delivery',
      imageLink: 'assets/images/20250912_161326.png',
      fontSize: 24,
      name2:
          'Never worry about running out of fuel. Get fuel delivered right to your location with just a tap.',
    );
  }
}

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomIntro(
      name1: 'Al Diagnostics',
      imageLink: 'assets/images/20250912_161326.png',
      fontSize: 24,
      name2:
      'Monitor your vehicle health in real-time. Get alerts and insights about maintenance needs before they become problems.',
    );
  }
}