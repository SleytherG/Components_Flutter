// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.publimetro.pe/resizer/Fhn-e_LdkHNgu5RBL-DgK_MG6Ik=/1440x1080/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/5HGWIKYJYFGVNBXJOHMJH3V4RQ.jpg'),
            radius: 25.0,          
            )
          ),
          Container(
            margin: EdgeInsets.only( right: 10.0),
            child: CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.brown,
          )
        ),
          
        ]
      ),
      body: Center(
        child: FadeInImage(
         image: NetworkImage('https://media.glamour.mx/photos/619065e8a6e030d6480f79f1/master/pass/241696.jpeg'),
         placeholder: AssetImage('assets/jar-loading.gif'),
         fadeInDuration: Duration( milliseconds: 200),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    
  }
}