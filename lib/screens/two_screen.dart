import 'package:flutter/material.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({
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
        title: Text("Tela dois"),
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
              child: Text('Próxima tela'),
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
