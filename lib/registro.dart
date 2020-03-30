import 'package:flutter/material.dart';
import 'package:qra/blocs/login_bloc.dart';

class RegistroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _crearfondo(context),
            _loginform(context),
          ],
        )
    );
  }

  Widget _loginform(BuildContext context){
    final size = MediaQuery.of(context).size;

    //hace scroll dependiendo del largo del hijo (Column)
    return SingleChildScrollView(    
      scrollDirection: Axis.vertical,
        child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: <Widget>[             
            Container(
                height: 220.0,
              ),
              
          Container(
                width: size.width * 0.85,
                padding: EdgeInsets.symmetric(vertical: 30.0),
                margin: EdgeInsets.symmetric(vertical: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3.0, /* sombra del Container */
                      offset: Offset(0.0, 5.0), /* baja la sombra en el (eje Y) 5px */
                      spreadRadius: 1.5 /* que la sombra tenga mas Blur */
                    ),
                  ]
                ),

                child: Column(
                  children: <Widget>[
                    Text("Registro", style: TextStyle(fontSize: 20.0)),
                    SizedBox(height: 20.0),
                    _crearEmail(),
                    SizedBox(height: 20.0),
                    _crearPassword(),
                    SizedBox(height: 30.0),
                    _crearBoton(),
                  ],
                ),
              ),


            FlatButton(
              child: Text('Ya tienes Cuenta? Inicia Sesión', style: TextStyle(fontSize: 13.0, color: Colors.grey)),
              onPressed: () => Navigator.pushReplacementNamed(context, 'login'),
            ),
            //SizedBox(height: 100.0,)
          ],
        ),
    );
  }

  Widget _crearEmail(){

          return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
              icon: Icon(Icons.alternate_email, color: Colors.lightBlue[300]),
              hintText: 'Escriba su Email',
              labelText: 'Email',
            ),
          ),
          );
  }

  Widget _crearPassword(){

          return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline, color: Colors.lightBlue[300]),
              labelText: 'Contraseña',
            ),
          ),
        );

  }

  Widget _crearBoton(){
    
        return RaisedButton(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
            child: Text('Registrarse'),
            ),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 0.0,
          color: Colors.lightBlue[300],
          textColor: Colors.white,
          onPressed: null, 
      );
  
}



  Widget _crearfondo(BuildContext context){

    final size = MediaQuery.of(context).size;
    final fondored = Container(
        height: size.height * 0.4, /* 40% de la pantalla de alto */ 
        width: double.infinity, /* ocupa el ancho de todo el dispositivo */ 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color> [
              Colors.lightBlue[300],
              Colors.blueAccent[100]
            ]
          )
        ),
    );

    final circulo = Container(
      width: 100.0,
      height: 100.0,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.10)
      ),
    );

    return Stack(
      children: <Widget>[
        fondored,
        //Para posicionar el circulo a fuerza - No se pueden colocar 4 atributos, max 3 (ej: top-lef-right)
        Positioned( top: 70.0, left: 30.0, child: circulo),
        Positioned( top: -40.0, right: -30.0, child: circulo),
        Positioned( top: 140.0, right: -30.0, child: circulo),
        Positioned( top: 210.0, left: -30.0, child: circulo),
        

        Container(
          padding: EdgeInsets.only(top: 45.0),
          child: Column(
            children: <Widget>[
              Icon(Icons.style, color: Colors.white, size: 100.0,),
              SizedBox(height: 7.0, width: double.infinity),
              Text('Qra App', style: TextStyle(color: Colors.white, fontSize: 25.0)),
            ],
          ),
        )
      ],
    );
  }
}