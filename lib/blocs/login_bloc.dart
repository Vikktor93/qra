import 'dart:async';
import 'package:qra/blocs/validator.dart';
import 'package:rxdart/rxdart.dart';

//la librería rxdart no trabaja con StreamController trabaja con BehaviorSubject

class LoginBloc with Validators{

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // Recuperar datos del String

  Stream<String> get emailStream => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _passwordController.stream.transform(validarPassword);
  
  //Valida una combinacion del email y password, si ambos estan correctos se habilitara el boton de Ingreso de Sesión
  Stream<bool> get formValidStream => 
    Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);

  //Insertar Valores al String

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // Obtener el último valor ingresado a los stream
  String get email => _emailController.value;
  String get password => _passwordController.value;

  dispose(){
    _emailController?.close();
    _passwordController?.close();
  }
}