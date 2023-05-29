import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'compartirCorreo.dart';
import "compartirWhatsapp.dart";
import 'creacionMensaje.dart';

class Compartir extends StatefulWidget {
  const Compartir({Key? key}) : super(key: key);

  @override
  State<Compartir> createState() => _Compartir();
}

class _Compartir extends State<Compartir> {
  final TextEditingController mensajeEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final whatsapp = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 60,
            child: SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: () {
                  // Acción al hacer clic en el ícono de WhatsApp
                },
                icon: Image.asset(
                  "assets/whatsapp_icon.png",
                  color: Colors.white,
                  width: 50, // establece el ancho de la imagen en 100
                  height: 50,
                  fit: BoxFit.fill,
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 160),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompartirWhatsapp()));
            },
            child: const Text(
              "WhatsApp",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
    final volverAnterior = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 255, 192, 203),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 55),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Editar()));
        },
        child: const Text(
          "Volver a Editar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final mail = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 50,
            child: SizedBox(
              width: 80,
              height: 50,
              child: IconButton(
                onPressed: () {
                  // Acción al hacer clic en el ícono de WhatsApp
                },
                icon: Image.asset(
                  "assets/menssaje.png",
                  color: Colors.white,
                  width: 80, // establece el ancho de la imagen en 100
                  height: 50,
                  fit: BoxFit.fill,
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 180),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompartirCorreo()));
            },
            child: const Text(
              "Correo",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
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
              padding: const EdgeInsets.only(top: 170),
              alignment: Alignment.center,
              child: mail,
            ),
            Container(
              padding: const EdgeInsets.only(top: 480),
              alignment: Alignment.center,
              child: whatsapp,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80),
              alignment: Alignment.bottomCenter,
              child: volverAnterior,
            ),
            Container(
              padding: const EdgeInsets.only(top: 210, left: 250),
              child: Image.asset(
                "assets/nube.png",
                width: 330, // establece el ancho de la imagen en 100
                height: 210,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 410, left: 160),
              child: Image.asset(
                "assets/carita.png",
                width: 150, // establece el ancho de la imagen en 100
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 310, left: 330),
              child: const Text(
                'Sin Piedad',
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
