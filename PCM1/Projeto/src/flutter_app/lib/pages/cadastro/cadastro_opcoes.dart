import 'package:flutter/material.dart';
import 'package:flutter_app/components/public/card_consulta.dart';

class CadastroOpcoes extends StatelessWidget {
  const CadastroOpcoes({Key? key}) : super(key: key);

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
              rota: '/cadastro/sistema',
              icon: Icons.wysiwyg,
              iconAction: Icons.add,
            ),
            CardConsulta(
              image: 'assets/images/acesso.jpg',
              titulo: 'Perfil de Acesso',
              rota: '/cadastro/sistema',
              icon: Icons.call_split,
              iconAction: Icons.add,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardConsulta(
              image: 'assets/images/matriz.jpg',
              titulo: 'Matriz SoD',
              rota: '/cadastro/sistema',
              icon: Icons.security,
              iconAction: Icons.add,
            ),
            CardConsulta(
              image: 'assets/images/usuario.jpg',
              titulo: 'Perfil de Usuario',
              rota: '/cadastro/sistema',
              icon: Icons.person,
              iconAction: Icons.add,
            ),
          ],
        ),
      ],
    );
  }
}
