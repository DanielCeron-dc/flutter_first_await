import 'package:flutter/material.dart';

import 'package:flutter_first_await/src/routes/routes.dart';
import 'package:flutter_first_await/src/screens/alert_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getPageRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("hola"); 
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
      );
  }
}
