import 'package:flutter/material.dart';

import '../components/public/card_consulta.dart';

class ConsultaOpcoes extends StatelessWidget {
  const ConsultaOpcoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardConsulta(
              image: 'assets/images/sistema.jpg',
              titulo: 'Sistema',
              rota: '/consulta/usuario',
              icon: Icons.wysiwyg,
            ),
            CardConsulta(
              image: 'assets/images/acesso.jpg',
              titulo: 'Perfil de Acesso',
              rota: '/consulta/usuario',
              icon: Icons.call_split,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardConsulta(
              image: 'assets/images/matriz.jpg',
              titulo: 'Matriz SoD',
              rota: '/consulta/usuario',
              icon: Icons.security,
            ),
            CardConsulta(
              image: 'assets/images/usuario.jpg',
              titulo: 'Perfil de Usuario',
              rota: '/consulta/usuario',
              icon: Icons.person,
            ),
          ],
        ),
      ],
    );
  }
}
