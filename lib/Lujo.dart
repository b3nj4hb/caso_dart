import 'dart:io';

import 'Vehiculos.dart';

class Lujo extends Vehiculos {
  int? pasajeros;
  Lujo(
      {required int nserie,
      required String marca,
      required int anio,
      required int precio,
      required this.pasajeros})
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
        "\nPasajeros: " +
        this.pasajeros.toString());
  }
}
