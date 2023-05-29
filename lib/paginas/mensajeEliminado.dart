import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'home_page.dart';
import 'compartirCorreo.dart';
import "compartirWhatsapp.dart";

class MensajeEliminado extends StatefulWidget {
  const MensajeEliminado({Key? key}) : super(key: key);

  @override
  State<MensajeEliminado> createState() => _MensajeEliminado();
}

class _MensajeEliminado extends State<MensajeEliminado> {
  final TextEditingController mensajeEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final volverInicio = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
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
            image: AssetImage("assets/2.png"),
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
                  'Tu mensaje ha sido\n   eliminado. Tu no \n     has visto nada',
                  style: TextStyle(
                      color: Color.fromARGB(255, 121, 127, 247),
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
