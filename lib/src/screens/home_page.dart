import 'package:flutter/material.dart';
import 'package:flutter_first_await/src/provider/menu_provider.dart';
import 'package:flutter_first_await/src/utils/icons_string_util.dart';

class HomePage extends StatelessWidget {
  final Map<String, String> si = {
    'texto': 'Awa',
    'icon': "folder_open",
    'ruta': 'avatar'
  };
  final Map<String, String> no = {
    'texto': 'Awa',
    'icon': "folder_open",
    'ruta': 'avatar'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home :)'),
      ),
      body: _listPages(),
    );
  }

  Widget _listPages() {
    return FutureBuilder(
        future: menuProvider.loadJson(),
        initialData: [si, no],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => ListView(
              children: _listItems(snapshot.data, context),
      )
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> listWidgetsOptions = List();

    data.forEach((opt) {
      listWidgetsOptions
        ..add(ListTile(
            title: Text(opt["texto"]),
            leading: getIcon(opt['icon']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, opt['ruta']);
            }))
        ..add(Divider(height: 1.0));
    });

    return listWidgetsOptions;
  }
}
