import 'package:flutter/material.dart';

import 'package:flutter_first_await/src/components/row_card.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página Principal'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ListView(
         padding: EdgeInsets.only(bottom: 500.0, top: 5.0, left: 5.0, right: 5.0),
          scrollDirection: Axis.horizontal, 
          children: [
          RowCard('Titulo1', 'Subtitulo1', Icons.ac_unit),
          RowCard('Titulo2', 'Subtitulo2', Icons.access_alarms),
          RowCard('Titulo3', 'Subtitulo3', Icons.accessible_forward),
          RowCard('Titulo3', 'Subtitulo3', Icons.add_a_photo),
        ]
       )
       
      );
  }
}
