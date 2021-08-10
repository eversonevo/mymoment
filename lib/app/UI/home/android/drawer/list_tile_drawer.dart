import 'package:flutter/material.dart';

class ListTileDrawer extends StatelessWidget {
  
  ListTileDrawer({
    required this.title,
    required this.icon,
    required this.onTap});

    final String title;
    final Icon icon;
    final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: icon,
      onTap: onTap(),
    );
  }
}
