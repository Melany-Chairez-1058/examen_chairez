import 'package:flutter/material.dart';

class Pantalla_cinco extends StatelessWidget {
  const Pantalla_cinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              heroTag: 'fab_add', // ✔ Etiqueta única
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial!'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Container(
              height: 60,
              color: Colors.purple,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            heroTag: 'fab_home', // ✔ Etiqueta única
            child: const Icon(
              Icons.home,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
