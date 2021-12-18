
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page Temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){
    
    // ignore: deprecated_member_use, unnecessary_new
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text( opt )
      );

      lista..add( tempWidget )
           ..add( const Divider() );
      
    }
    
    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map(( item ){

      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: const Text('Cualquier cosa'),
            leading: const Icon(Icons.account_balance_outlined),
            trailing: const Icon(Icons.keyboard_arrow_right_outlined),
            onTap: (){ },
          ),
          const Divider(),
        ],
      );

    }).toList();

  }

}