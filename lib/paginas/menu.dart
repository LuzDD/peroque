class Categoria {
  int id;
  String nombre;
  String foto;

  Categoria(this.id, this.nombre, this.foto);
}

final menu = [
  Categoria(1, "Imprimir", "imp.png"),
  Categoria(2, "Mensaje", "msj.png"),
  Categoria(3, "Plantilla", "plantilla.png"),
  Categoria(4, "Recarga", "recarga.png"),
];
