import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children:  [
          const ListTile(
            title: Text('Tarjeta'),
            subtitle: Text('Descripcion de la tarjeta para ver lo que fernando nos quiere mostrar'),
            leading: Icon(Icons.photo_album_outlined, color: Colors.blueGrey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){
                
                }, 
                child: const Text('Cancelar')
              ),
              TextButton(
                onPressed: (){  }, 
                child: const Text('Ok')
              ),
            ],
          )
        ],
      ),
    );

  }

  Widget _cardTipo2(){
    //return Card(
      final card = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
            const FadeInImage(
            image:  NetworkImage('https://images5.alphacoders.com/495/thumb-1920-495521.jpg'),
            placeholder: AssetImage('assests/giyuu-tomioka-demon-slayer.gif'),
            height: 300.0,
            fit: BoxFit.cover,
           ),
          /*Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
            ),*/
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('Algo para poner')
              )
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(10.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10)
          )
        ]
        //color: Colors.red
      ),
      );
  }

} 