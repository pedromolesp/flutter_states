import 'dart:async';

import 'package:programacion/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  final StreamController<Usuario> _usuarioStreamController =
      StreamController<Usuario>.broadcast();

  Usuario? get usuario => _usuario;
  // ignore: unnecessary_null_comparison
  bool get existeUsuario => (usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario usuario) {
    _usuario = usuario;
    _usuarioStreamController.add(usuario);
  }

  void cambiarEdad(int edad) {
    usuario?.edad = edad;
    _usuarioStreamController.add(usuario!);
  }

  void dispose() {
    _usuarioStreamController.close();
  }
}

final usuarioService = _UsuarioService();
