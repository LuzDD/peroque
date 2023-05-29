import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'home_page.dart';
import 'mensajeGuardado.dart';
import 'mensajeEliminado.dart';
import 'nombreMensaje.dart';

class GuardarONo extends StatefulWidget {
  const GuardarONo({Key? key}) : super(key: key);

  @override
  State<GuardarONo> createState() => _GuardarONo();
}

class _GuardarONo extends State<GuardarONo> {
  @override
  Widget build(BuildContext context) {
    final confirmarSi = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NombreMensaje()));
        },
        child: const Text(
          "Si",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final confirmarNo = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 252, 200, 227),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MensajeEliminado()));
        },
        child: const Text(
          "No",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 80),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/logo.png",
                width: 250, // establece el ancho de la imagen en 100
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80, right: 350),
              alignment: Alignment.bottomCenter,
              child: confirmarSi,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80, left: 350),
              alignment: Alignment.bottomCenter,
              child: confirmarNo,
            ),
            Container(
              padding: const EdgeInsets.only(top: 280, left: 130),
              child: Image.asset(
                "assets/nube.png",
                width: 480, // establece el ancho de la imagen en 100
                height: 340,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 610, left: 80),
              child: Image.asset(
                "assets/carita.png",
                width: 150, // establece el ancho de la imagen en 100
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 410, left: 200),
              child: const Text(
                'Felicitaciones, ya\nenviaste el mensaje,\n¿Deseas guardarlo?',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
