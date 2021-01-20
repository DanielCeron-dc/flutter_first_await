import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatefulWidget {
  CustomDropdownMenu(this._list, this._icon, this._onSelected);
  final List<String> _list;
  IconData _icon;
  Function _onSelected; 

  @override
  _DropdownMenuState createState() => _DropdownMenuState(_list, _icon, _onSelected);
}

class _DropdownMenuState extends State<CustomDropdownMenu> {
  _DropdownMenuState(List<String> list, this._icon  , this.onSelected ) {
    if (list.isNotEmpty) {
      _list = list;
    } else {
      _list = ["without options"];
    }
    _selectedValue = _list.first;
  }

  List<String> _list = new List();
  IconData _icon;
  String _selectedValue;
  Function onSelected; 

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 10)),
        Text(_selectedValue),
        PopupMenuButton<String>(
          icon: Icon(_icon),
          onSelected: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
          itemBuilder: (BuildContext context) {
            return _list.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
    );
  }
}
