import 'package:flutter/services.dart' show rootBundle;
// rootbundle: me sirve para poder leer JSON
import 'dart:convert';

class _MenuProviders {
  List<dynamic> opciones = [];

  //llamo al metodo desde el contructor 
  _MenuProviders() {
    cargarDatos();
  }

/**
 * funcion asincroana que lee un JSON para luego las rutas. 
 * y regresa una lista tipo DYNAMIC 
 */
  Future<List<dynamic>> cargarDatos() async {
    
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    print(dataMap['rutas']);
    return opciones;
  }
}

//se crea una sola instancia porque la clase es privada. y se usa un patron singleton. 
final menuProviders = new _MenuProviders();
