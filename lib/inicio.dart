import 'package:flutter/material.dart';
 
class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inicio', style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
          backgroundColor: Colors.lightBlue[300],
        ),
        body: Center(
          child: Container(
            child: Text('Inicio'),
          ),
        ),
      ),
    );
  }
}