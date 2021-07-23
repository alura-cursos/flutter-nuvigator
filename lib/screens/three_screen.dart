import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({
    Key key,
    this.onNext,
    this.onClose,
  }) : super(key: key);

  final Function() onNext;
  final Function() onClose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela três"),
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
              child: Text('Abrir segundo fluxo'),
              onPressed: () => onNext(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Fechar fluxo'),
              onPressed: () => onClose(),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
