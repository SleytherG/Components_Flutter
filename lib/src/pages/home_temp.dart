import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis','Siete'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp')
      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsShort(),
      )
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = List<Widget>.empty(growable: true);

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt)
      );

      lista..add(tempWidget)
           ..add(Divider(thickness: 1.0,));
    }
    return lista;
  }

  List<Widget> _crearItemsShort() {

    return opciones.map(( item ) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!'),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(thickness: 1.0,)
        ],
      );
    }).toList();

  }



}