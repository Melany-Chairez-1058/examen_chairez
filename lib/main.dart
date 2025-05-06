import 'package:examen_chairez/inicio.dart';
import 'package:examen_chairez/single_child_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:examen_chairez/appbar.dart';
import 'package:examen_chairez/pageview.dart';
import 'package:examen_chairez/date_picker.dart';
import 'package:examen_chairez/floating_action_button.dart';
import 'package:examen_chairez/clipper.dart';
import 'package:examen_chairez/clipoval.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Inicio(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const Pantalla_uno(),
        '/pantalla3': (context) => const Pantalla_dos(),
        '/pantalla4': (context) => Pantalla_tres(),
        '/pantalla5': (context) => const Pantalla_cuatro(),
        '/pantalla6': (context) => const Pantalla_cinco(),
        '/pantalla7': (context) => const Pantalla_seis(),
        '/pantalla8': (context) => const Pantalla_siete(),
      },
    );
    return materialApp;
  }
}
