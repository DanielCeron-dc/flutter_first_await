import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Avatar"),
          actions: <Widget>[
            CircleAvatar(
              child: Text('JY'),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://e00-elmundo.uecdn.es/elmundo/imagenes/2007/08/06/1186391983_0.jpg'),
            ),
            SizedBox(width: 10,),
          ],
        ),
        body: Center(
            child: FadeInImage(
            image: NetworkImage(
              "https://e00-elmundo.uecdn.es/elmundo/imagenes/2007/08/06/1186391983_0.jpg"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeOutDuration: Duration(milliseconds: 300),
          )
        )
    );
  }
}
