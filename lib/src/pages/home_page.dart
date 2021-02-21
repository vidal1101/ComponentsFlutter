import 'dart:io';

import 'package:flutter/material.dart';
import 'package:componetesflutter/src/providers/menu_providers.dart';
import 'package:componetesflutter/src/utils/icons_util.dart';
import 'package:componetesflutter/src/pages/alerts_page.dart';


/**
 * Ruta de inicio de la pagina y la cual carga el resto de opciones de la app
 */
class Home_Page extends StatelessWidget {
  final opciones = ['UNO', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS', 'SIETE'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes_APP '),
      ),
      // body: ListView(children: _CrearItems()),
      body: _Lista(),
      
    );
  }



  /** metodo que espera que se procesa toda la informacion, antes de rotornar.
 */
  Widget _Lista() {
    /**
     * la funcion FUTUREBUILDER contruye la app, y pide los parametro. 
     * future, builder, y una lista vacia 
     */
    return FutureBuilder(

      future: menuProviders.cargarDatos(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  /*retorna los objetos del json para pintarlos en la app
  */
  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final wiggetTemporal = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.exit_to_app, color: Colors.deepPurple),
        onTap: () {
          /*
          final ruta = MaterialPageRoute(builder: (context) => AlertsPage());
          Navigator.push(context, ruta);
          */
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(wiggetTemporal)..add(Divider());
    });

    return opciones;
  }

  /*metodo que llama a los items y los retorno para pintarlos
  */
  List<Widget> _CrearItems() {
    print(menuProviders.cargarDatos());

    List<Widget> ListaCargada = new List<Widget>();

    for (var opc in this.opciones) {
      final aux = ListTile(
        title: Text('$opc'),
        subtitle: Text('*Descripción de lista....'),
        leading: Icon(Icons.add_a_photo),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {},
      );
      ListaCargada
        ..add(aux)
        ..add(Divider(
          color: Colors.orange[400],
        ));
    }

    return ListaCargada;
  }
}
