import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cadastro/cadastro_form_matriz_sod.dart';
import 'package:flutter_app/pages/cadastro/cadastro_form_perfil_acesso.dart';
import 'package:flutter_app/pages/cadastro/cadastro_form_sistema.dart';
import 'package:flutter_app/pages/cadastro/cadastro_opcoes.dart';
import 'package:flutter_app/pages/cadastro/cadastro_form_usuario.dart';

class CadastroMain extends StatelessWidget {
  const CadastroMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          // seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/cadastro',
      routes: {
        '/cadastro': (context) => const CadastroOpcoes(),
        '/cadastro/sistema': (context) => const CadastroFormSistema(),
        '/cadastro/matriz-sod': (context) => const CadastroFormMatrizSod(),
        '/cadastro/perfil-acesso': (context) =>
            const CadastroFormPerfilAcesso(),
        '/cadastro/usuario': (context) => const CadastroFormUsuario(),
      },
    );
  }
}
