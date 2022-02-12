import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicacion',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi app'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://www2.deloitte.com/content/dam/Deloitte/es/Images/promo_images/tecnologia/Deloitte-ES-tecnologia-Flutter-350x350.png"),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://www2.deloitte.com/content/dam/Deloitte/es/Images/promo_images/tecnologia/Deloitte-ES-tecnologia-Flutter-350x350.png"),
            ),
          ],
        ),
      ),
    );
  }
}
