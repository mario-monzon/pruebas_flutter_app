import 'package:flutter/material.dart';
import 'package:pruebas_flutter_app/src/pages/firebase_page.dart';
import 'package:pruebas_flutter_app/src/pages/home_page.dart';
import 'package:pruebas_flutter_app/src/pages/lista_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pruebas',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/lista': (BuildContext context) => ListaPage(),
        '/firebase': (BuildContext context) => FirebasePage(),
      },
      darkTheme: ThemeData.dark(),
    );
  }
}