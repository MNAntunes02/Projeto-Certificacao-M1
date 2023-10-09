import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cadastro/cadastro_opcoes.dart';

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
      },
    );
  }
}
