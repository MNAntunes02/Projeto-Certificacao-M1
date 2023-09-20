import 'package:flutter/material.dart';
import 'package:flutter_app/pages/consulta_opcoes.dart';

class ConsultaMain extends StatelessWidget {
  const ConsultaMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          // seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ConsultaOpcoes(),
      },
    );
    ;
  }
}
