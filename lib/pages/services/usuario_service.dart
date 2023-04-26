import 'package:flutter/material.dart';
import 'package:programacion/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;
  // ignore: unnecessary_null_comparison
  bool get existeUsuario => (usuario != null) ? true : false;
  void cargarUsuario(Usuario usuario) {
    _usuario = usuario;
  }

  void cambiarEdad(int edad) {
    usuario?.edad = edad;
  }
}
