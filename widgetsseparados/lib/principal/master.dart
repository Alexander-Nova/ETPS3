import 'package:flutter/material.dart';
import 'package:widgetsseparados/pages/pagina.dart';

class Master extends StatefulWidget {
  Master({Key? key}) : super(key: key);

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets")
      ),
      body: RaisedButton(
        child: Text("Login"),
        onPressed: ()=> {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => Pagina())
          )
        },
      ),
    );
  }
}