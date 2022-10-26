// import 'package:dart_02/dart_02.dart' as dart_02;

import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${dart_02.calculate()}!');
  cositas();
}

menu() {
  print('~~ MENU PRINCIPAL ~~');
  print(
      '[1] Autos Compactos\n[2] Autos de lujo\n[3] Vagonetas\n[4] Camionetas\n[5] Salir');
}

// ignore: non_constant_identifier_names
menu_funciones() {
  print('~~ OPCIONES ~~');
  print('[1] Registrar\n[2] Listar\n[3] Salir');
}

cositas() {
  int op;
  do {
    menu();
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        menu_funciones();
        break;
      default:
        cositas();
    }
  } while (op != 4);
}
