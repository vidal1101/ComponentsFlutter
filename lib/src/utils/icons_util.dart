import 'package:flutter/material.dart';

final _iconos = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'image': Icons.image,
  'list': Icons.view_list,
  'camera': Icons.camera_alt,
};

Icon getIcon(String nombreIcono) {
  return Icon(_iconos[nombreIcono], color: Colors.tealAccent);
}
