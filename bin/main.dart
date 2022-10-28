import 'dart:io';
import 'package:dart_02/Compacto.dart';
import 'package:dart_02/Lujo.dart';
import 'package:dart_02/Camioneta.dart';
import 'package:dart_02/Vagoneta.dart';

List<Compacto> Compactos = [];
List<Lujo> Lujos = [];
List<Camioneta> Camionetas = [];
List<Vagoneta> Vagonetas = [];

void main() {
  Compacto compacto = new Compacto(
      nserie: 202010352,
      marca: 'Benja',
      anio: 2022,
      precio: 80000,
      pasajeros: 8);
  Compactos.add(compacto);
  menu();
}

void addLujo() {
  stdout.write("Numero de serie del motor: ");
  String? nserie = stdin.readLineSync();
  int nseries = int.parse(nserie!);
  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Año del auto: ");
  String? anio = stdin.readLineSync();
  int anios = int.parse(anio!);
  stdout.write("Precio: ");
  String? precio = stdin.readLineSync();
  int precios = int.parse(precio!);
  stdout.write("Cantidad de pasajeros: ");
  String? pasajero = stdin.readLineSync();
  int pasajeros = int.parse(pasajero!);

  Lujo lujo = new Lujo(
      anio: anios,
      marca: marcas,
      nserie: nseries,
      pasajeros: pasajeros,
      precio: precios);
  Lujos.add(lujo);
}

void addCompacto() {
  stdout.write("Numero de serie del motor: ");
  String? nserie = stdin.readLineSync();
  int nseries = int.parse(nserie!);
  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Año del auto: ");
  String? anio = stdin.readLineSync();
  int anios = int.parse(anio!);
  stdout.write("Precio: ");
  String? precio = stdin.readLineSync();
  int precios = int.parse(precio!);
  stdout.write("Cantidad de pasajeros: ");
  String? pasajero = stdin.readLineSync();
  int pasajeros = int.parse(pasajero!);

  Compacto compacto = new Compacto(
      anio: anios,
      marca: marcas,
      nserie: nseries,
      pasajeros: pasajeros,
      precio: precios);
  Compactos.add(compacto);
}

void addCamioneta() {
  stdout.write("Numero de serie del motor: ");
  String? nserie = stdin.readLineSync();
  int nseries = int.parse(nserie!);

  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";

  stdout.write("Año del auto: ");
  String? anio = stdin.readLineSync();
  int anios = int.parse(anio!);

  stdout.write("Precio: ");
  String? precio = stdin.readLineSync();
  int precios = int.parse(precio!);

  stdout.write("Cantidad de pasajeros: ");
  String? pasajero = stdin.readLineSync();
  int pasajeros = int.parse(pasajero!);

  Camioneta camioneta = new Camioneta(
      anio: anios,
      marca: marcas,
      nserie: nseries,
      pasajeros: pasajeros,
      precio: precios);
  Camionetas.add(camioneta);
}

void addVagoneta() {
  stdout.write("Numero de serie del motor: ");
  String? nserie = stdin.readLineSync();
  int nseries = int.parse(nserie!);
  stdout.write("Marca del auto: ");
  String? marca = stdin.readLineSync();
  String marcas = "$marca";
  stdout.write("Año del auto: ");
  String? anio = stdin.readLineSync();
  int anios = int.parse(anio!);
  stdout.write("Precio: ");
  String? precio = stdin.readLineSync();
  int precios = int.parse(precio!);
  stdout.write("Cantidad de peso: ");
  String? peso = stdin.readLineSync();
  int pesos = int.parse(peso!);

  Vagoneta vagoneta = new Vagoneta(
      anio: anios,
      marca: marcas,
      nserie: nseries,
      peso: pesos,
      precio: precios);
  Vagonetas.add(vagoneta);
}

void listlujo() {
  for (int i = 0; i < Lujos.length; i++) {
    int pocision = i + 1;
    stdout.write('\n~~ ' + 'Registro n° ' + "$pocision." + ' ~~');
    Lujos[i].getAlll();
    stdout.write("\n");
  }
}

void listcompacto() {
  for (int i = 0; i < Compactos.length; i++) {
    int pocision = i + 1;
    stdout.write('\n~~ ' + 'Registro n° ' + "$pocision." + ' ~~');
    Compactos[i].getAlll();
    stdout.write("\n");
  }
}

void listcamioneta() {
  for (int i = 0; i < Camionetas.length; i++) {
    int pocision = i + 1;
    stdout.write('\n~~ ' + 'Registro n° ' + "$pocision." + ' ~~');
    Camionetas[i].getAlll();
    stdout.write("\n");
  }
}

void listvagoneta() {
  for (int i = 0; i < Vagonetas.length; i++) {
    int pocision = i + 1;
    stdout.write('\n~~ ' + 'Registro n° ' + "$pocision." + ' ~~');
    Vagonetas[i].getAlll();
    stdout.write("\n");
  }
}

void menu() {
  stdout.write('\n~~ MENU PRINCIPAL ~~\n');
  stdout.write(
      '[1] Autos Lujo\n[2] Autos Compacto\n[3] Camioneta\n[4] Vagoneta\n[5] Salir\nOpcion: ');
  String? op = stdin.readLineSync();
  int x = int.parse(op!);
  switch (x) {
    case 1:
      mlujo();
      break;
    case 2:
      mcompacto();
      break;
    case 3:
      mcamioneta();
      break;
    case 4:
      mvagoneta();
      break;
    case 5:
      stdout.write("¯\_(ツ)_/¯\n");
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void submenu() {
  stdout.write('\n~~ OPCIONES ~~\n');
  stdout.write('[1] Registrar\n[2] Listar\n[3] Salir\nOpcion: ');
}

void mlujo() {
  submenu();
  String? op = stdin.readLineSync();
  int x = int.parse(op!);
  switch (x) {
    case 1:
      addLujo();
      mlujo();
      break;
    case 2:
      listlujo();
      mlujo();
      break;
    case 3:
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void mcompacto() {
  submenu();
  String? op = stdin.readLineSync();
  int x = int.parse(op!);
  switch (x) {
    case 1:
      addCompacto();
      mcompacto();
      break;
    case 2:
      listcompacto();
      mcompacto();
      break;
    case 3:
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void mcamioneta() {
  submenu();
  String? op = stdin.readLineSync();
  int x = int.parse(op!);
  switch (x) {
    case 1:
      addCamioneta();
      mcamioneta();
      break;
    case 2:
      listcamioneta();
      mcamioneta();
      break;
    case 3:
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}

void mvagoneta() {
  submenu();
  String? op = stdin.readLineSync();
  int x = int.parse(op!);
  switch (x) {
    case 1:
      addVagoneta();
      mvagoneta();
      break;
    case 2:
      listvagoneta();
      mvagoneta();
      break;
    case 3:
      menu();
      break;
    default:
      stdout.write("Elija una opcion valida\n");
      menu();
  }
}
