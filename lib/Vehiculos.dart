class Vehiculos {
  int? nserie;
  String? marca;
  int? anio;
  int? precio;

  Vehiculos(int nserie, String marca, int anio, int precio) {
    this.nserie = nserie;
    this.marca = marca;
    this.anio = anio;
    this.precio = precio;
  }

  get getNserie {
    return this.nserie;
  }

  get getMarca {
    return this.marca;
  }

  get getAnio {
    return this.anio;
  }

  get getPrecio {
    return this.precio;
  }

  void set setNserie(int nserie) {
    this.nserie = nserie;
  }

  void set setMarca(String marca) {
    this.marca = marca;
  }

  void set setAnio(int anio) {
    this.anio = anio;
  }

  void set setPrecio(int precio) {
    this.precio = precio;
  }
}
