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

  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    if (existeUsuario) usuario?.edad = edad;
    notifyListeners();
  }

  void eliminarUsuario() {
    _usuario = null;
    notifyListeners();
  }
}
