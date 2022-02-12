import 'package:flutter/material.dart';
import 'package:widgetsseparados/principal/campos.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets")
      ),
      body: Container(
        child: mensaje(),
      ),

    );
  }
}

