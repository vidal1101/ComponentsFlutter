import 'package:flutter/material.dart';

class Inputs_Page extends StatefulWidget {
  @override
  _Inputs_PageState createState() => _Inputs_PageState();
}

class _Inputs_PageState extends State<Inputs_Page> {
  //variables de los controles
  String _nombre = '';
  String _email = '';
  String _password = '';
  TextEditingController _inputFielfecha = new TextEditingController();
  List _poderes = ['volar', 'Super Fuerza', 'Super Aliento', 'Fuerza'];
  String _opcionSeleccionadaCombo = 'volar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campos de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 17.0),
        children: <Widget>[
          _crearInput(),
          Divider(
            color: Colors.brown,
          ),
          _crearEmail(),
          Divider(
            color: Colors.brown,
          ),
          _crearInputPassword(),
          Divider(
            color: Colors.brown,
          ),
          _crearFecha(context),
          Divider(
            color: Colors.brown,
          ),
          _crearComboBox(),
          Divider(
            color: Colors.brown,
          ),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        counter: Text('cantidad de letras: ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

/**
 * crear la cajita designada para un email 
 */
  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valorEmail) {
        setState(() {
          _email = valorEmail;
        });
      },
    );
  }

/**
 * crear la cajita de texto para el password 
 */
  Widget _crearInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: 'Password',
        counter: Text('Cantidad de caracteres: ${_password.length}'),
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valorp) {
        setState(() {
          _password = valorp;
        });
      },
    );
  }

/*crear el text feiel en el cual se llama a mostar un show dialog 
 */
  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFielfecha,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: 'Fecha de nacimiento',
        hintText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());

        setState(
          () => _selectDate(context),
        );
      },
    );
  }

  /*un show dialog con el cual se muestra un calender 
   */
  _selectDate(BuildContext context) async {
    DateTime fechaSeleccionada = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2010),
      lastDate: new DateTime(2030),
      locale: Locale('es', 'ES'),
    );

    if (fechaSeleccionada != null) {
      setState(
        () => _inputFielfecha.text = fechaSeleccionada.toString(),
      );
    }
  }

  /*lee una lista de opciones de un combo box tipo string 
   */
  List<DropdownMenuItem<String>> getOpcionesComboitems() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearComboBox() {
    return Row(
      children: <Widget>[
        Icon(Icons.list),
        SizedBox(width: 20.0,),
        DropdownButton(
          value: _opcionSeleccionadaCombo,
          items: getOpcionesComboitems(),
          onChanged: (optSeleccionada) {
            setState(() {
              _opcionSeleccionadaCombo = optSeleccionada;
            });
          },
        ),
      ],
    );
  }
}
