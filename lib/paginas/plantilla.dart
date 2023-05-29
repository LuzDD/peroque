import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/imprimir.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'creacionMensaje.dart';
import 'imprimir.dart';

class Plantilla extends StatefulWidget {
  const Plantilla({Key? key}) : super(key: key);

  @override
  State<Plantilla> createState() => _Plantilla();
}

class _Plantilla extends State<Plantilla> {
  final TextEditingController mensajeEditing = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final editarP1 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Editar()));
        },
        child: const Text(
          "Editar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final editarP2 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Editar()));
        },
        child: const Text(
          "Editar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final editarP3 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Editar()));
        },
        child: const Text(
          "Editar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final editarP4 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Editar()));
        },
        child: const Text(
          "Editar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final editarP5 = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 55),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Editar()));
        },
        child: const Text(
          "Editar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 121, 127, 247)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Imprimir()));
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
                'Plantillas',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 290, left: 50),
              child: const Text(
                'Diseños',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 192, 203),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 837, left: 50),
              child: editarP1,
            ),
            Container(
              padding: const EdgeInsets.only(top: 837, left: 375),
              child: editarP2,
            ),
            Container(
              padding: const EdgeInsets.only(top: 1430, left: 375),
              child: editarP3,
            ),
            Container(
              padding: const EdgeInsets.only(top: 1430, left: 50),
              child: editarP4,
            ),
            Container(
              padding: const EdgeInsets.only(top: 2000, left: 50),
              child: editarP5,
            ),
            Container(
              padding: const EdgeInsets.only(top: 360, left: 50),
              child: Image.asset(
                "assets/4.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 360, left: 375),
              child: Image.asset(
                "assets/5.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 950, left: 50),
              child: Image.asset(
                "assets/6.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 950, left: 375),
              child: Image.asset(
                "assets/7.png",
                width: 300, // establece el ancho de la imagen en 100
                height: 450,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 1530, left: 50),
              child: Image.asset(
                "assets/8.png",
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
