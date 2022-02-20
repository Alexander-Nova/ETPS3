import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Parcial 1 - Registro"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/fondo.png"),
                  // image: NetworkImage(
                  //     "https://wallpaperaccess.com/full/797185.png"),
                  fit: BoxFit.cover)),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        logo(),
                        campoNombreApellidos(),
                        campoUsername(),
                        campoEmail(),
                        campoTelefono(),
                        campoDireccion(),
                        campoPassword(),
                        // campoRePassword(),
                        botonCancelar(),
                        botonGuardar()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image:
      //               NetworkImage("https://wallpaperaccess.com/full/797185.png"),
      //           fit: BoxFit.cover)),
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         campoNombreApellidos(),
      //         campoUsername(),
      //         campoEmail(),
      //         campoTelefono(),
      //         campoPassword(),
      //         campoRePassword(),
      //         botonCancelar(),
      //         botonGuardar()
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

Widget logo() {
  return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          image: DecorationImage(
                  image: AssetImage("assets/img/profile.png"),
              fit: BoxFit.cover)));
}

Widget campoNombreApellidos() {
  return Container(
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.text_fields),
              hintText: "Nombres",
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.text_fields),
              hintText: "Apellidos",
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        )
      ],
    ),
  );
}

Widget campoUsername() {
  return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: "Username",
          fillColor: Colors.white,
          filled: true,
        ),
      ));
}

Widget campoEmail() {
  return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          hintText: "Email",
          fillColor: Colors.white,
          filled: true,
        ),
      ));
}

Widget campoTelefono() {
  return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone),
          hintText: "Telefono",
          fillColor: Colors.white,
          filled: true,
        ),
      ));
}

Widget campoPassword() {
  return Container(
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_clock_outlined),
              hintText: "Password",
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_clock_outlined),
              hintText: "Confirm password",
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        )
      ],
    ),
  );
}

Widget botonCancelar() {
  return FlatButton(
    child: Text("Cancelar"),
    color: Colors.greenAccent,
    textColor: Colors.white,
    onPressed: () {},
  );
}

Widget botonGuardar() {
  return FlatButton(
    child: Text("Guardar"),
    color: Colors.blueAccent,
    textColor: Colors.white,
    onPressed: () {},
  );
}

Widget campoDireccion() {
  return Container(
      // height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        keyboardType: TextInputType.multiline,
        minLines: 1, //Normal textInputField will be displayed
        maxLines: 4, // when user presses enter it will adapt to it
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_city),
          hintText: "Direccion",
          fillColor: Colors.white,
          filled: true,
        ),
      ));
}
