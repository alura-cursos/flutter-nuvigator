import 'package:flutter/material.dart';
import 'package:proj/router_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: 'home',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}