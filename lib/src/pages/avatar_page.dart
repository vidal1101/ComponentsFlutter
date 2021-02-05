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
              backgroundImage: AssetImage('assets/avatarmeli.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('ML'),
              backgroundColor: Colors.purpleAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FadeInImage(
              image: AssetImage('assets/meli.jpg'),
              fadeInDuration: Duration(seconds: 5),
              placeholder: AssetImage('assets/jar-loading.gif'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Te Amo princesa'),
              
              
            )
          ],
        ),
      ),
    );
  }
}
