import 'package:programacion/models/usuario.dart';

class _UsuarioService {
  late Usuario _usuario;

  Usuario get usuario => _usuario;
  // ignore: unnecessary_null_comparison
  bool get existeUsuario => (usuario != null) ? true : false;
  void cargarUsuario(Usuario usuario) {
    _usuario = usuario;
  }
}

final usuarioService = _UsuarioService();
