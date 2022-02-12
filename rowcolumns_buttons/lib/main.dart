import 'package:flutter/material.dart';

void main() {
  runApp(RCB_APP());
}

class RCB_APP extends StatelessWidget {
  const RCB_APP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Filas y columnas",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Principal(title:'Filas y columnas'),
    );
  }
}

class Principal extends StatefulWidget {
  Principal({Key? key, required this.title }) : super(key: key);
  final String title;

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Valor 1"),
          Text("Valor 2"),
          Text("Valor 3"),
          Text("Valor 4")
        ],
        ),
    );
  }
}