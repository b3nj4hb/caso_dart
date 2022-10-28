import 'dart:io';

import 'Vehiculos.dart';

class Vagoneta extends Vehiculos {
  int? peso;
  Vagoneta(
      {required int nserie,
      required String marca,
      required int anio,
      required int precio,
      required this.peso})
      : super(nserie, marca, anio, precio);
  getAlll() {
    stdout.write("\nNumero de serie de motor: " +
        super.getNserie.toString() +
        "\nMarca: " +
        super.getMarca.toString() +
        "\nAño: " +
        super.getAnio.toString() +
        "\nPrecio: " +
        super.getPrecio.toString() +
        "Peso: " +
        this.peso.toString());
  }
}
