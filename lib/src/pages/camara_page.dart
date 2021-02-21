import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Camara_Page extends StatefulWidget {
  @override
  _Camara_PageState createState() => _Camara_PageState();
}

class _Camara_PageState extends State<Camara_Page> {
  //arreglo de imagenes que se guardaran en una lista 
  List<PickedFile> imagenesFiles = [];

  final _imagePicker = new ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camara'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(15.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: imagenesFiles.length,
        itemBuilder: (BuildContext context, int indice) {
          return Image.file(File(imagenesFiles[indice].path));
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black87,
        child: Icon(Icons.camera),
        onPressed: _optionsDialog,
      ),
    );
  }

/**
 *muestra una ventana modal en la cual se carga 2 opciones para elegir.
 tomar foto.
 elegir de galeria.
 */
  Future<void> _optionsDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Container(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text('Tomar Fotografia'),
                      onTap: _openCamara,
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    GestureDetector(
                      child: Text('Abrir Galeria'),
                      onTap: _openGaley,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

/**
 * metodo para tener acceso a la camra con la libreria de imagePciker
 */
  void _openCamara() async {
    PickedFile picture = await _imagePicker.getImage(
      source: ImageSource.camera,
    );
    Navigator.pop(context);
    setState(() {
      if (picture != null) imagenesFiles.add(picture);
    });
  }

/*Habre la galeria para añadir imagenes
 */
  void _openGaley() async {
    PickedFile picture = await _imagePicker.getImage(
      source: ImageSource.gallery,
    );
    Navigator.pop(context);
    setState(() {
      if (picture != null) imagenesFiles.add(picture);
    });
    //cierra la ventana modal de alertDialog
  }
}
