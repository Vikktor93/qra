import 'package:flutter/material.dart';
 
class AyudaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ayuda',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ayuda', style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
          backgroundColor: Colors.lightBlue[300],
        ),
        body: Center(
          child: Container(
            child: Text('Ayuda'),
          ),
        ),
      ),
    );
  }
}