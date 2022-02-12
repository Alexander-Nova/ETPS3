import 'package:flutter/material.dart';
// import 'dart:html';
// import 'dart:js';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alert Dialogos"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Mostrar alerta!"),
                  onPressed: () {
                    _mostrarAlerta(context);
                    // print("Se presiono el boton");
                  }),
              SizedBox(
                height: 20,
              ),
              Text("Informativo")
            ],
          ),
        ));
  }
}

Future<void> _mostrarAlerta(BuildContext context) async {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => _buildAlertDialog(context)); //(_) construye un metodo static
}

Widget _buildAlertDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Como estan?"),
    content: Text("Muy bien con flutter"),
    actions: <Widget>[
      FlatButton(
        child: Text("Aceptar"),
        textColor: Colors.blueAccent,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      FlatButton(
        child: Text("Cancelar"),
        textColor: Colors.redAccent,
        onPressed: () {
          Navigator.of(context).pop();
          print("Presiono cancelar");
        },
      ),
      TextButton(
          onPressed: () {
            print("OK");
            Navigator.of(context).pop();
          },
          child: Text("No ok"))
    ],
  );
}
