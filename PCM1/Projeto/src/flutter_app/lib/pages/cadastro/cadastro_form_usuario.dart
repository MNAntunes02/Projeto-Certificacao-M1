import 'package:flutter/material.dart';
import 'package:flutter_app/components/public/dropdown_form.dart';
import 'package:flutter_app/components/public/textfield_form.dart';

class CadastroFormUsuario extends StatefulWidget {
  const CadastroFormUsuario({Key? key}) : super(key: key);

  @override
  _CadastroFormUsuarioState createState() => _CadastroFormUsuarioState();
}

enum SistemaLabel {
  s001('S001 - Sistema 1'),
  s002('S002 - Sistema 2');

  const SistemaLabel(this.label);
  final String label;
}

enum PerfilAcessoLabel {
  perfil1('Perfil de Acesso 1 - S001'),
  perfil2('Perfil de Acesso 2 - S001'),
  perfil3('Perfil de Acesso 1 - S002'),
  perfil4('Perfil de Acesso 2 - S002');

  const PerfilAcessoLabel(this.label);
  final String label;
}

class _CadastroFormUsuarioState extends State<CadastroFormUsuario> {
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<PerfilAcessoLabel>> perfilAcessoEntries =
        <DropdownMenuEntry<PerfilAcessoLabel>>[];
    for (final PerfilAcessoLabel perfilAcesso in PerfilAcessoLabel.values) {
      perfilAcessoEntries.add(DropdownMenuEntry<PerfilAcessoLabel>(
        value: perfilAcesso,
        label: perfilAcesso.label,
      ));
    }

    final List<DropdownMenuEntry<SistemaLabel>> sistemaEntries =
        <DropdownMenuEntry<SistemaLabel>>[];
    for (final SistemaLabel sistema in SistemaLabel.values) {
      sistemaEntries.add(DropdownMenuEntry<SistemaLabel>(
        value: sistema,
        label: sistema.label,
      ));
    }

    final cpf = TextEditingController();
    final sistema = TextEditingController();
    final perfil = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Formulário de Usuário',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextfieldForm(
                  titulo: 'CPF',
                  controller: cpf,
                  maxLength: 20,
                ),
                DropdownForm(
                  titulo: 'Sistema',
                  controller: sistema,
                  dropdownMenuEntries: sistemaEntries,
                ),
                DropdownForm(
                  titulo: 'Perfil de Acesso',
                  controller: perfil,
                  dropdownMenuEntries: perfilAcessoEntries,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Processing Data')),
                          //   );

                          print("cpf => " + cpf.text);
                          print("sistema => " + sistema.text);
                          print("perfil => " + perfil.text);

                          //   } else {
                          //     print("Erro ao tentar cadastrar");
                          //   }
                        },
                        label: const Text('Cadastrar'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
