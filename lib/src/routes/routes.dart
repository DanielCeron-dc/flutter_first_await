import 'package:flutter/material.dart';

import 'package:flutter_first_await/src/screens/alert_page.dart';
import 'package:flutter_first_await/src/screens/avatar_page.dart';
import 'package:flutter_first_await/src/screens/card_page.dart';
import 'package:flutter_first_await/src/screens/home_page.dart';

Map<String, WidgetBuilder> getPageRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
