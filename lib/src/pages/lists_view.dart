import 'package:flutter/material.dart';

class Lists_Page extends StatefulWidget {
  @override
  _Lists_PageState createState() => _Lists_PageState();
}

class _Lists_PageState extends State<Lists_Page> {
  List<int> _listaImagenes = new List();
  int _ultimaItemImage = 0;
  ScrollController _scrollControlle = new ScrollController();

  @override
  void initState() {
    super.initState();
    _agregarImagenes();

    _scrollControlle.addListener(() {
      if (_scrollControlle.position.pixels ==
          _scrollControlle.position.maxScrollExtent) _agregarImagenes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listas de imagenes'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollControlle,
      itemCount: _listaImagenes.length,
      itemBuilder: (BuildContext context, int indice) {
        final indiceImagen = _listaImagenes[indice];

        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 12.5,
                  spreadRadius: 2.3,
                  offset: Offset(3.0, 10.0),
                )
              ]),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              FadeInImage(
                fadeInDuration: Duration(seconds: 1),
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300/?image=${indiceImagen}'),
              ),
            ],
          ),
          
        );
      },
    );
  }

  void _agregarImagenes() {
    for (var i = 0; i < 10; i++) {
      _ultimaItemImage++;
      _listaImagenes.add(_ultimaItemImage);
    }
    setState(() {});
  }
}
