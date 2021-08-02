import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/singup_screen.dart';

class SingUpRoute extends NuRoute {
  @override
  String get path => 'sing-up';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return SingupScreen(
      onLoginClick: () => nuvigator.open('login'),
    );
  }
}