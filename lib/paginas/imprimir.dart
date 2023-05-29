import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import "home_page.dart";
import "plantilla.dart";

class Imprimir extends StatefulWidget {
  const Imprimir({Key? key}) : super(key: key);

  @override
  State<Imprimir> createState() => _Imprimir();
}

class _Imprimir extends State<Imprimir> {
  final TextEditingController mensajeEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 121, 127, 247)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
      ),
      body: SingleChildScrollView(
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
              padding: const EdgeInsets.only(top: 220, left: 50),
              child: const Text(
                'Imprimir',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 310, left: 50),
              child: const Text(
                'Nuevo Mensaje',
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 200, 227),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 890, left: 50),
              child: const Text(
                'Guardados',
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 200, 227),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 400, left: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Plantilla()));
                },
                child: Image.asset(
                  "assets/add.png",
                  width: 300, // establece el ancho de la imagen en 100
                  height: 450,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 970, left: 50),
              child: Image.asset(
                "assets/10.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 970, left: 375),
              child: Image.asset(
                "assets/11.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1480, left: 50),
              child: Image.asset(
                "assets/9.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1480, left: 375),
              child: Image.asset(
                "assets/13.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1990, left: 50),
              child: Image.asset(
                "assets/12.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
