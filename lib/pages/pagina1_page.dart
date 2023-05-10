import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programacion/bloc/usuario/usuario_cubit.dart';
import 'package:programacion/models/usuario.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 1"),
      ),
      body: BlocBuilder<UsuarioCubit, UsuarioState>(
        builder: (context, state) {
          if (state is UsuarioInitial) {
            return const Center(
              child: Text('No hay información del usuario'),
            );
          } else {
            return const InformacionUsuario();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, "pagina2"),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const ListTile(
            title: Text('Nombre: '),
          ),
          const ListTile(
            title: Text('Edad: '),
          ),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const ListTile(
            title: Text('profesion 1: '),
          ),
          const ListTile(
            title: Text('profesion 2: '),
          ),
          const ListTile(
            title: Text('profesion 3: '),
          ),
        ],
      ),
    );
  }
}
