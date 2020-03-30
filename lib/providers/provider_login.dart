import 'package:flutter/material.dart';
import 'package:qra/blocs/login_bloc.dart';


 // 1. Se pretende almacenar el Material App dentro de Inherited Widget - 2. Provider del Inherited Widget -> puede manejar multiples intancias de bloc (en este caso solo una) - 3. Crear la instancia del bloc para manejar la misma instancia de información en cualquier lugar de la App
class ProviderLogin extends InheritedWidget{

  //Instancia de la Clase
  static ProviderLogin _instancia;

  // El Factory determina si se necesita regresar una nueva instancia de la clase o ocupar la existente
  factory ProviderLogin({Key key, Widget child}) {

    if(_instancia == null){
      _instancia = new ProviderLogin._internal(key: key, child: child,);
    }

    return _instancia;
  }

  final loginBloc = LoginBloc();

  ProviderLogin._internal({Key key, Widget child}) : super(key: key, child: child);  //Constructor (Key del Widget - Tipo de Widget)

  @override // Al actualizarse debe notificar a sus hijos
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  //Esta funcion busca en el arbol de widget y retorna la instancia del LoginBloc // context = arbol de widgets
  static LoginBloc of ( BuildContext context ){
    // Va a tomar el conteto y va a buscar un widget exactamente con el mismo tipo de ProviderLogin
    return (context.inheritFromWidgetOfExactType(ProviderLogin) as ProviderLogin).loginBloc;
  }

}