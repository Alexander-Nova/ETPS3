import 'package:flutter/material.dart';
import 'package:routerflutter/Paginas/principal.dart';
import 'package:routerflutter/Paginas/usuario.dart';
import 'package:routerflutter/Paginas/ajustes.dart';
void main() {
  runApp(APProute());
}



class APProute extends StatefulWidget {
  const APProute({Key? key}) : super(key: key);

  @override
  State<APProute> createState() => _APProuteState();
}

class _APProuteState extends State<APProute> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi aplicacion',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nombre app"),
        ),
        body: _paginaActual == 0 ? PaginaPrincipal() : Usuario() ,
        // Center(
        //   child: Container(
        //     child: Text(
        //       "Practiva previa",
        //       style: TextStyle(fontSize: 25, fontFamily: 'Roboto'),
        //     ),
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Ajustes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: 'Usuario'),
          ],
        ),
      ),
    );
  }
}
