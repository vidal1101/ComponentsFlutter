import 'package:flutter/services.dart' show rootBundle;
// rootbundle: me sirve para poder leer JSON
import 'dart:convert';

class _MenuProviders {
  List<dynamic> opciones = [];

  _MenuProviders() {
    cargarDatos();
  }

  Future<List<dynamic>> cargarDatos() async {
    
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    print(dataMap['rutas']);
    return opciones;
  }
}

final menuProviders = new _MenuProviders();
