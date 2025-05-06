import 'package:flutter/material.dart';

class Pantalla_dos extends StatelessWidget {
  const Pantalla_dos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: const Text("A P P B A R"),
        leading: IconButton(
          onPressed: () {
            // open menu drawer
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // do something
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pantalla inicial!'),
        ),
      ),
    );
  }
}
