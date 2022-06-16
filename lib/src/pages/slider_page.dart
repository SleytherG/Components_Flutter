// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 300.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
          child: Column(
        children: <Widget>[
          _crearSlider(),
          _crearCheckBox(),
          _crearSwitch(),
          Expanded(
            child: _crearImagen(),
          ),
          ],
      )),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        // divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 600.0,
        onChanged: ( _bloquearCheck ) ? null : (valor) {
          setState(() {
            _valorSlider = valor;
            
          });
        });
  }

  Widget _crearImagen() {
    String imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/3/38/Hogwarts_model_studio_tour.jpg';

    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      image: NetworkImage(imageUrl),
      width: _valorSlider,
      fit: BoxFit.contain
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: ( value ) {
    //     setState(() {
    //       _bloquearCheck = value ?? false;
    //     });
    //   });
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      activeColor: Colors.deepOrange,
      value: _bloquearCheck,
      onChanged: ( value ) {
        setState(() {
          _bloquearCheck = value ?? false;
        });
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      activeColor: Colors.red,
      value: _bloquearCheck,
      onChanged: ( value ) {
        setState(() {
          _bloquearCheck = value;
        });
      }
      );
  }
}
