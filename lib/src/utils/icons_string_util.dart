import 'package:flutter/material.dart';

final Map<String, IconData> _iconMap = {
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
};

Icon getIcon(String iconName) {
  return Icon(
    _iconMap[iconName],
    color: Colors.tealAccent,
  );
}
