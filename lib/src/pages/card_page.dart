// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cards')),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            ],
        ));
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0)),
    child: Column(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.photo_album, color: Colors.blue),
        title: Text('Soy el titulo de esta tarjeta'),
        subtitle: Text(
            'Aqui esta la descripción de la tarjeta para poder observar como se comporta la tarjeta en general'),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            child: Text('Cancelar'),
            onPressed: () {},
          ),
          TextButton(
            child: Text('Ok'),
            onPressed: () {},
          )
        ],
      )
    ],
  ));
}

Widget _cardTipo2() {
  final card = Container(
    // clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        FadeInImage(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(
            milliseconds: 200
            ),
          height: 400.0,
          fit: BoxFit.cover
        ),
        // Image(
        //   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg')
        // ),
        Container(
          child: Text('No tengo idea de que poner'),
          padding: EdgeInsets.all(10.0),
        )
      ]
    )
  );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset( 2.0, 10.0)
        )
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );
}
