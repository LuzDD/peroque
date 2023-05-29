import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import "plantilla.dart";
import "compartir.dart";

class Editar extends StatefulWidget {
  const Editar({Key? key}) : super(key: key);

  @override
  State<Editar> createState() => _Editar();
}

class _Editar extends State<Editar> {
  final TextEditingController mensajeEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final volverPlantilla = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Plantilla()));
        },
        child: const Text(
          "Volver",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final enviar = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 255, 192, 203),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Compartir()));
        },
        child: const Text(
          "Enviar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final mensaje = SizedBox(
      height: 440,
      width: 430,
      child: TextFormField(
        autofocus: false,
        controller: mensajeEditing,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        maxLines: null,
        decoration: const InputDecoration(
          hintText: 'Escriba el mensaje que quieres enviar',
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 255, 192, 203),
              fontSize: 25,
              fontWeight: FontWeight.bold),
          border: InputBorder.none,
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
              padding: const EdgeInsets.only(bottom: 50, right: 350),
              alignment: Alignment.bottomCenter,
              child: volverPlantilla,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 50, left: 350),
              alignment: Alignment.bottomCenter,
              child: enviar,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 180,
              ),
              child: Image.asset(
                "assets/4.png",
                width: 720, // establece el ancho de la imagen en 100
                height: 850,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 350, left: 170),
              child: mensaje,
            )
          ],
        ),
      ),
    );
  }
}
