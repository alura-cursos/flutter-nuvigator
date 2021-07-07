import 'package:flutter/material.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/screens/menu_screen.dart';

class OrgsDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MenuScreen()
    );
  }
}