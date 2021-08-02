import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/login_screen.dart';

class LoginRoute extends NuRoute {
  @override
  String get path => 'login';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return LoginScreen(
      onSingUpClick: () => nuvigator.open('sing-up'),
      onHomeClick: () => nuvigator.open('home'),
    );
  }
}