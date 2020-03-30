import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qra/ayuda.dart';
import 'package:qra/inicio.dart';
import 'package:qra/locales.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home';
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  
  Widget callPage(int selectedIndex){
    switch (selectedIndex) {
      case 0 : return InicioPage();
      case 1 : return LocalesPage();
      case 2 : return AyudaPage();
        break;
      default:
    }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: callPage(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white, size: 30.0), title: Text('Inicio')),
          BottomNavigationBarItem(icon: Icon(Icons.store, size: 30.0, color: Colors.white), title: Text('Locales')),
          BottomNavigationBarItem(icon: Icon(Icons.help, size: 30.0, color: Colors.white), title: Text('Ayuda')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.white,
        onTap: onItemTapped,
        backgroundColor: Colors.lightBlue[300] ,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}