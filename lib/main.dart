import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/router.dart';

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
      home: Nuvigator(
        router: MyRouter(),
      ),
    );
  }
}