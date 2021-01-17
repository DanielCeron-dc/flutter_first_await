import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  RowCard(this._title, this._subtitle, this._icon);

  final String _title;
  final String _subtitle;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListBody(
      mainAxis: Axis.horizontal,
      children: [
        Container(
          child: ListTile(
            leading: Icon(_icon),
            title: Text(_title),
            subtitle: Text(_subtitle),
          ),
          width: 200.0,
        )
      ],
    ));
  }
}
