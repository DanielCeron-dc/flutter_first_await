import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];
  Future<List<dynamic>> loadJson() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    await new Future.delayed(const Duration(seconds: 5), () => "1");
    Map<String, dynamic> data = json.decode(resp);
    opciones = data['rutas'];
    return opciones;
  }
}

final menuProvider = _MenuProvider();
