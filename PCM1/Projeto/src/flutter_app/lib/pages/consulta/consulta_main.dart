import 'package:flutter/material.dart';
import 'package:flutter_app/pages/consulta/consulta_opcoes.dart';
import 'package:flutter_app/pages/consulta/consulta_tabela_matriz_sod.dart';
import 'package:flutter_app/pages/consulta/consulta_tabela_perfil_acesso.dart';
import 'package:flutter_app/pages/consulta/consulta_tabela_sistema.dart';

import 'consulta_tabela_usuario.dart';

class ConsultaMain extends StatelessWidget {
  const ConsultaMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/consulta',
      routes: {
        '/consulta': (context) => const ConsultaOpcoes(),
        '/consulta/usuario': (context) => const ConsultaTabelaUsuario(),
        '/consulta/sistema': (context) => const ConsultaTabelaSistema(),
        '/consulta/matriz-sod': (context) => const ConsultaTabelaMatrizSod(),
        '/consulta/perfil-acesso': (context) =>
            const ConsultaTabelaPerfilAcesso(),
      },
    );
  }
}
