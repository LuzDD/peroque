import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:peroque/paginas/registration_page.dart';
import 'guardarONo.dart';
import 'compartir.dart';

class CompartirWhatsapp extends StatefulWidget {
  const CompartirWhatsapp({Key? key}) : super(key: key);

  @override
  State<CompartirWhatsapp> createState() => _CompartirWhatsapp();
}

class _CompartirWhatsapp extends State<CompartirWhatsapp> {
  final TextEditingController correoText = TextEditingController();
  final TextEditingController asuntoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final numeroCelular = SizedBox(
      width: 500,
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

    final volverAnterior = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 121, 127, 247),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Compartir()));
        },
        child: const Text(
          "Opciones para compartir",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final enviarMensajeWhatsapp = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 252, 200, 227),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 100),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GuardarONo()));
        },
        child: const Text(
          "Enviar",
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
              padding: const EdgeInsets.only(top: 320),
              alignment: Alignment.center,
              child: numeroCelular,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80, right: 350),
              alignment: Alignment.bottomCenter,
              child: volverAnterior,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80, left: 350),
              alignment: Alignment.bottomCenter,
              child: enviarMensajeWhatsapp,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 500, right: 290),
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Numero Celular',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
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
