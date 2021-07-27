import 'package:nested_nuvigators/screens/display_screen.dart';
import 'package:nested_nuvigators/screens/input_screen.dart';
import 'package:nested_nuvigators/screens/one_screen.dart';
import 'package:flutter/material.dart';
import 'package:nested_nuvigators/screens/three_screen.dart';
import 'package:nested_nuvigators/screens/two_screen.dart';
import 'package:nuvigator/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Nuvigator.routes(
        initialRoute: 'home',
        screenType: materialScreenType,
        routes: [
          NuRouteBuilder(path: 'home', builder: (_, __, ___) => HomeScreen()),
          NuRouteBuilder(path: 'one', builder: (_, __, ___) => OneScreen()),
          NuRouteBuilder(path: 'two', builder: (_, __, ___) => TwoScreen()),
          NuRouteBuilder(path: 'three', builder: (_, __, ___) => ThreeScreen()),
          NuRouteBuilder(path: 'input', builder: (_, __, ___) => InputScreen()),
          NuRouteBuilder(path: 'display', builder: (_, __, ___) => DisplayScreen()),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final nuvigator = Nuvigator.of(context);

    return Scaffold(
       appBar: AppBar(
         title: Text("Flutter app"),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'Toque no botão para mudar de página',
             ),
             SizedBox(
               height: 20,
             ),
             ElevatedButton(
               child: Text('Primeiro fluxo'),
               onPressed: () => nuvigator.open('one'),
             ),
             SizedBox(
               height: 20,
             ),
             ElevatedButton(
               child: Text('Segundo fluxo'),
               onPressed: () => nuvigator.open('input')
             ),
           ],
         ),
       ), //
    );
  }
}
