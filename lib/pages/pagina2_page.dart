import 'package:flutter/material.dart';
import 'package:programacion/models/usuario.dart';
import 'package:programacion/pages/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: usuarioService.usuarioStream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.hasData
                  ? (snapshot.data?.nombre ?? '')
                  : "Página 2"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      usuarioService.cargarUsuario(Usuario(
                          nombre: 'Pedro',
                          edad: 32,
                          profesiones: ['Programador', 'Cabrero']));
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Establecer usuario',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      usuarioService.cambiarEdad(30);
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Cambiar edad',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: const Text(
                      'Añadir profesión',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
