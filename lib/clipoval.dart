import 'package:flutter/material.dart';

class Pantalla_siete extends StatelessWidget {
  const Pantalla_siete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clip Oval')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/marvel.jpeg',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Pantalla inicial!'),
          ),
        ],
      ),
    );
  }
}
