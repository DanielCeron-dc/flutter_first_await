import 'package:flutter/material.dart';
import 'package:flutter_first_await/src/provider/menu_provider.dart';



class HomePage extends StatelessWidget {
  final Map<String, String> si = {'texto': 'Awa'};
  final Map<String, String> no = {'texto': 'Awa'};

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.loadJson(),
      initialData: [
       si, no
      ],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => ListView(
        children: _listItems(snapshot.data),
      ),
    );
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> listWidgetsOptions = List();

    data.forEach((opt) {
      listWidgetsOptions
        ..add(ListTile(
            title: Text(opt["texto"]),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {}))
        ..add(Divider(height: 1.0));
    });

    return listWidgetsOptions;
  }
}
