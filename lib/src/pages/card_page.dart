import 'package:flutter/material.dart';

class Card_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card_page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[_CardTipo1()],
      ),
    );
  }

  Widget _CardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo,
              color: Colors.brown,
            ),
            title: Text("FOTO"),
            subtitle: Text("no hay imagen para mostrar.."),
          )
        ],
      ),
    );
  }
}
