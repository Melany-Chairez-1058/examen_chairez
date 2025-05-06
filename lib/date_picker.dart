import 'package:flutter/material.dart';

class Pantalla_cuatro extends StatefulWidget {
  const Pantalla_cuatro({Key? key}) : super(key: key);

  @override
  State<Pantalla_cuatro> createState() => _Pantalla_cuatroState();
}

class _Pantalla_cuatroState extends State<Pantalla_cuatro> {
  DateTime _dateTime = DateTime.now();

  // show date picker method
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb1bc81),
        title: const Center(
          child: Text(
            'pantalla Dos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Display chosen date
            Text(
              _dateTime.toString(),
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),

            // Button to choose date
            MaterialButton(
              onPressed: _showDatePicker,
              color: Colors.deepPurple[400],
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Choose Date",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),

            // Button to return to initial screen
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial!'),
            ),
          ],
        ),
      ),
    );
  }
}
