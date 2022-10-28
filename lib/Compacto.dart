import 'dart:io';
import 'Vehiculos.dart';

class Compacto extends Vehiculos {
  int? pasajeros;
  Compacto(
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
