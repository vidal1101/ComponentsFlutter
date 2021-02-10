import 'package:flutter/material.dart';

class Sliders_Page extends StatefulWidget {
  @override
  _Sliders_PageState createState() => _Sliders_PageState();
}

class _Sliders_PageState extends State<Sliders_Page> {
  double _valorSliders = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              _crearSliders(),
              Expanded(
                child: _mostrarImagen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearSliders() {
    return Slider(
      activeColor: Colors.deepPurpleAccent,
      label: 'Tamaño de la imagen: ${_valorSliders}',
      divisions: 15,
      value: _valorSliders,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSliders = valor;
        });
      },
    );
  }

  Widget _mostrarImagen() {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(seconds: 5),
      image: NetworkImage(
          'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg'),
      width: _valorSliders,
      fit: BoxFit.contain,
      );
  }
}
