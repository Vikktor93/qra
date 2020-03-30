import 'package:flutter/material.dart';
import 'package:qra/registro.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final titulo = Text(
      'Qra App', textAlign: TextAlign.center, style: TextStyle(fontSize: 35, color: Colors.lightBlue[300], fontWeight: FontWeight.bold)
    );

    final logo = Hero(
      tag: 'hero',
      child: 
        Center(
          child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 58.0,
          child: Image.asset('assets/img/logo.png'),
      ),
        ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        focusColor: Colors.redAccent,
        hintText: 'Correo Electrónico',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );

    final password = TextFormField( 
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        focusColor: Colors.redAccent,
        hintText: 'Contraseña',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlue[300],
        child: Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        '¿No tienes una cuenta? Resgistrate',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () => Navigator.pushReplacementNamed(context, 'registro'),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 8.0),
            titulo,
            SizedBox(height: 20.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
