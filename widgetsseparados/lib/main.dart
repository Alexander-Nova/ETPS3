import 'package:flutter/material.dart';
import 'package:widgetsseparados/principal/principal.dart';
import 'package:widgetsseparados/principal/master.dart';
void main() {
  runApp(usoWidgets());
}

class usoWidgets extends StatelessWidget {
  const usoWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClaseWidgets",
      home:Principal(),
    );
  }
}
