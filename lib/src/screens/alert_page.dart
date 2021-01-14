import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alertas'),
        ),
        body: Center(
            child: RaisedButton(
          child: Text('Ejecutar'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () => _showAlert(context),
        )));
  }

  void _showAlert(BuildContext context) {
    showDialog(context: context, barrierDismissible: true, builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('Titulos .I.'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Inserte contenido aqui'),
            FlutterLogo(
              size: 100.0,
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Salir"),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text("OK"),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    });
  }
}
