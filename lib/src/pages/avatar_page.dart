import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          //avatar
          Container(
            padding: EdgeInsets.all(3.0),
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage:NetworkImage('https://sm.ign.com/t/ign_latam/screenshot/default/superman-henry-cavill_8km6.1280.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('SM'),
              backgroundColor: Colors.redAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FadeInImage(
              image: NetworkImage('https://i.pinimg.com/originals/bc/05/58/bc05581166dfdce6a1c5d5aa27503741.jpg'),
              fadeInDuration: Duration(seconds: 5),
              placeholder: AssetImage('assets/jar-loading.gif'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('El Hombre de Acero.'),
              
              
            )
          ],
        ),
      ),
    );
  }
}
