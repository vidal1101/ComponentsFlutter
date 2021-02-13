import 'package:flutter/material.dart';
import 'dart:async';

class Lists_Page extends StatefulWidget {
  @override
  _Lists_PageState createState() => _Lists_PageState();
}

class _Lists_PageState extends State<Lists_Page> {
  List<int> _listaImagenes = new List();
  int _ultimaItemImage = 0;
  bool isLoading = false;
  ScrollController _scrollControlle = new ScrollController();

  @override
  void initState() {
    super.initState();
    _agregarImagenes();

    _scrollControlle.addListener(() {
      if (_scrollControlle.position.pixels ==
          _scrollControlle.position.maxScrollExtent) _fetchData();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollControlle.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('IMAGES'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(3.0),
              margin: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://aws.revistavanityfair.es/prod/designs/v1/assets/2444x2020/170456.jpg'),
                radius: 30.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(3.0),
              margin: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/a7/ea/58/a7ea587bdac5558658a47ce7e1e23ed2.jpg'),
                radius: 30.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(3.0),
              margin: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.alphacoders.com/875/875365.jpg'),
                radius: 30.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(3.0),
              margin: EdgeInsets.only(right: 3.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/b1/ca/83/b1ca83c6c90ca1b60c0b3e9a52a0e61d.jpg'),
                radius: 25.0,
              ),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(color: Colors.brown, child: _crearLista()),
            _crerLoading(),
          ],
        ));
  }

  Widget _crearLista() {
    return RefreshIndicator(
      color: Colors.orangeAccent,
      onRefresh: _newPageImages,
      child: ListView.builder(
        controller: _scrollControlle,
        itemCount: _listaImagenes.length,
        itemBuilder: (BuildContext context, int indice) {
          final indiceImagen = _listaImagenes[indice];

          return Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.brown,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius: 12.5,
                    spreadRadius: 2.3,
                    offset: Offset(3.0, 10.0),
                  )
                ]),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0),
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
      ),
    );
  }

  void _agregarImagenes() {
    for (var i = 0; i < 10; i++) {
      _ultimaItemImage++;
      _listaImagenes.add(_ultimaItemImage);
    }
    setState(() {});
  }

  Future<dynamic> _fetchData() async {
    isLoading = true;
    setState(() {});

    final duracion = new Duration(seconds: 5);
    return new Timer(duracion, responseHTTTP);
  }

  void responseHTTTP() {
    isLoading = false;

    _scrollControlle.animateTo(_scrollControlle.position.pixels + 175,
        duration: Duration(seconds: 2), curve: Curves.slowMiddle);

    _agregarImagenes();
  }

  Widget _crerLoading() {
    if (isLoading)
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                backgroundColor: Colors.purple,
              ),
            ],
          ),
        ],
      );
    else
      return Container();
  }

  Future<Null> _newPageImages() {
    final duracion = new Duration(seconds: 4);
    new Timer(duracion, () {
      _listaImagenes.clear();
      _ultimaItemImage++;
      _agregarImagenes();
    });
    return Future.delayed(duracion);
  }
}
