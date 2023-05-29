import 'package:flutter/material.dart';
import 'menu.dart';
import 'imprimir.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressedAction(Categoria categoria) {
    switch (categoria.id) {
      case 1:
        // Acción para la categoría "Imprimir"
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Imprimir()),
        );
        break;
      case 2:
        // Acción para la categoría "Mensaje"
        // Agrega aquí la acción correspondiente
        break;
      case 3:
        // Acción para la categoría "Plantilla"
        // Agrega aquí la acción correspondiente
        break;
      case 4:
        // Acción para la categoría "Recarga"
        // Agrega aquí la acción correspondiente
        break;
      default:
        // Acción por defecto si no se encuentra una coincidencia
        // Agrega aquí la acción por defecto
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SizedBox(height: 41),
          Image.asset(
            "assets/logo.png",
            width: 145, // establece el ancho de la imagen en 100
            height: 85,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 44),
          ClipOval(
            child: Image.asset(
              "assets/profile.png",
              width: size.width * 0.3,
            ),
          ),
          const SizedBox(height: 18),
          Flexible(
            child: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "¡Hola Camila!,  ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 200, 227),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: "a quien le quieres dar \n malas noticias",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 27),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Cuenta: 12344",
                  style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 27),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Saldo disponible \n",
                  style: TextStyle(
                    color: Color.fromARGB(255, 121, 127, 247),
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                TextSpan(
                  text: "10.000",
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 200, 227),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 700,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 252, 200, 227),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: GridView.builder(
                itemCount: menu.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onPressedAction(menu[index]);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/${menu[index].foto}",
                          width: 150,
                        ),
                        Text(
                          menu[index].nombre,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
