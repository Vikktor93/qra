import 'package:flutter/material.dart';
import 'package:qra/home.dart';
import 'package:qra/login.dart';
import 'package:qra/registro.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>   {
           'home': (BuildContext context) => HomePage(),
           'login': (BuildContext context) => LoginPage(),
           'registro': (BuildContext context) => RegistroPage()
        }
    );
  }
}
