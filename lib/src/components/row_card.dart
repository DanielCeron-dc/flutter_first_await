import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  RowCard(this._title, this._subtitle, this._icon, this._image, this._route);
  final String _route;
  final String _title;
  final String _subtitle;
  final IconData _icon;
  final String _image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListBody(
        mainAxis: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                child: ListTile(
                  leading: Icon(_icon),
                  title: Text(_title),
                  subtitle: Text(_subtitle),
                  onTap: () {
                    Navigator.pushNamed(context, _route);
                  },
                ),
                width: 250.0,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7.0,
                        spreadRadius: 2.0,
                        offset: Offset(2, 8),
                      )
                    ]),
              ),
              Container(
                child: Text(''),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(_image), fit: BoxFit.fill),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(25.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7.0,
                        spreadRadius: 3.0,
                        offset: Offset(0, 5),
                      )
                    ]),
                width: 250.0,
                height: 176.0,
              ),
            ],
          )
        ],
      ),
      margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
    );
  }
}
