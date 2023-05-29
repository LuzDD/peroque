import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'home_page.dart';
import 'compartirCorreo.dart';
import "compartirWhatsapp.dart";

class MensajeGuardado extends StatefulWidget {
  const MensajeGuardado({Key? key}) : super(key: key);

  @override
  State<MensajeGuardado> createState() => _MensajeGuardado();
}

class _MensajeGuardado extends State<MensajeGuardado> {
  final TextEditingController mensajeEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final volverInicio = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 255, 192, 203),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: const Text(
          "Salir",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
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
                padding: const EdgeInsets.only(bottom: 80),
                alignment: Alignment.bottomCenter,
                child: volverInicio,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  '    Tu mensaje ha sido\n      guardado por si\nvuelves a meter la pata',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 192, 203),
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
