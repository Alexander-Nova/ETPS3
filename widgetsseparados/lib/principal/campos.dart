import 'dart:js';

import 'package:flutter/material.dart';
import 'package:widgetsseparados/pages/pagina.dart';

Widget mensaje() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/0d/c1/dd/0dc1dd84ad9284a583752f3176899767.jpg"),
            // image: AssetImage("assets/img/logo1.png"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        nombre(),
        camposUsuario(),
        camposPassword(),
        SizedBox(
          height: 15,
        ),
        botonAceptar(),
        botonCancelar()
      ],
    ) //Text("ETPS3"),
        ),
  );
}

Widget nombre() {
  return Text(
    "Iniciar",
    style: TextStyle(
        color: Colors.black87, fontSize: 50.0, fontWeight: FontWeight.bold),
  );
}

Widget camposUsuario() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Usuario",
          fillColor: Colors.white,
          filled: true,
        ),
      ));
}

Widget camposPassword() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true,
        ),
      ));
}

Widget botonAceptar() {
  return ElevatedButton(
    onPressed: () => {
      Navigator.pop(
          Pagina, MaterialPageRoute(builder: (context) => Pagina()))
    },
    child: Text("Ingresar"),
  );
}

Widget botonCancelar() {
  return ElevatedButton(
    onPressed: () {},
    child: Text("Cancelar"),
  );
}
