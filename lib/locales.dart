import 'package:flutter/material.dart';
 
class LocalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Locales',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Locales', style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
          backgroundColor: Colors.lightBlue[300],
        ),
        body: Center(
          child: Container(
            child: Text('Locales'),
          ),
        ),
      ),
    );
  }
}