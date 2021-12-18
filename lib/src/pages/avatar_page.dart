import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [

          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg/640px-Stan_Lee_by_Gage_Skidmore_3.jpg'),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: const  Center(
        child: FadeInImage(
          placeholder: AssetImage('assests/spiderman.gif'), 
          image: NetworkImage('https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/11/13172239/StanLee-18.jpg'),
          fadeInDuration: Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}