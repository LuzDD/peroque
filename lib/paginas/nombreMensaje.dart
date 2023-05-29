import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'guardarONo.dart';
import 'mensajeGuardado.dart';

class NombreMensaje extends StatefulWidget {
  const NombreMensaje({Key? key}) : super(key: key);

  @override
  State<NombreMensaje> createState() => _NombreMensaje();
}

class _NombreMensaje extends State<NombreMensaje> {
  final TextEditingController correoText = TextEditingController();
  final TextEditingController asuntoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nombre = SizedBox(
      width: 600,
      height: 50,
      child: TextFormField(
        autofocus: false,
        controller: correoText,
        keyboardType: TextInputType.name,
        onSaved: (value) {
          correoText.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          fillColor: const Color.fromARGB(255, 241, 235, 255),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );

    final cancelar = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GuardarONo()));
        },
        child: const Text(
          "Cancelar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final guardarNombre = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 252, 200, 227),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MensajeGuardado()));
        },
        child: const Text(
          "Guardar",
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
              padding: const EdgeInsets.only(top: 550),
              alignment: Alignment.center,
              child: nombre,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80, right: 350),
              alignment: Alignment.bottomCenter,
              child: cancelar,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80, left: 350),
              alignment: Alignment.bottomCenter,
              child: guardarNombre,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 400, right: 250),
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Nombre del Mensaje',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 200, left: 90),
              child: Image.asset(
                "assets/nube.png",
                width: 530, // establece el ancho de la imagen en 100
                height: 350,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 550, left: 50),
              child: Image.asset(
                "assets/carita.png",
                width: 150, // establece el ancho de la imagen en 100
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 360, left: 150),
              child: const Text(
                '¿Cual es el nombre del mensaje?',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
