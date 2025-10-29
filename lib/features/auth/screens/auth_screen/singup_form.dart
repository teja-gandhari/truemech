import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: const Text('Sing Up'),
      ),
      body: const Center(
        child: Text('Sing Up Screen'),
      )

    );
  }
}
