import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearImagen(),
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider, 
      min: 10.0,
      max: 400.0,
      onChanged: ( valor ){
      setState(() {
        _valorSlider = valor;
      });
    });
  }

  _crearImagen() {
    return Image(
      image: NetworkImage('https://www.cinemascomics.com/wp-content/uploads/2021/10/The-batman-nuevo-trailer-DC-Fandome.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,

    );
  }
}