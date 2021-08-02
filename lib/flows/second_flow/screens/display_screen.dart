import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({
    Key key,
    this.onClose,
    this.text,
  }) : super(key: key);

  final Function() onClose;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela um"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Texto fornecido anteriormente',
            ),
            SizedBox(
              height: 20,
            ),
            Text(text),
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
