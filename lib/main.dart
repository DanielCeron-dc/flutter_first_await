import 'package:flutter/material.dart';

import 'package:flutter_first_await/src/screens/alert_page.dart';
import 'package:flutter_first_await/src/screens/avatar_page.dart';
import 'package:flutter_first_await/src/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/' : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
      },
      );
  }
}
