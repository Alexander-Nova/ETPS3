import 'package:flutter/material.dart';
import 'package:parcial1/Paginas/registro.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parcial 1",
      home: Registro(),
    );
  }
}
