import 'package:flutter/material.dart';
import 'package:flutter_app/components/public/dropdown_form.dart';
import 'package:flutter_app/components/public/textfield_form.dart';

class CadastroFormPerfilAcesso extends StatefulWidget {
  const CadastroFormPerfilAcesso({Key? key}) : super(key: key);

  @override
  _CadastroFormPerfilAcessoState createState() =>
      _CadastroFormPerfilAcessoState();
}

enum SistemaLabel {
  s001('S001 - Sistema 1'),
  s002('S002 - Sistema 2');

  const SistemaLabel(this.label);
  final String label;
}

class _CadastroFormPerfilAcessoState extends State<CadastroFormPerfilAcesso> {
// final _formKey = GlobalKey<FormState>();

  final sistema = TextEditingController();
  final perfil = TextEditingController();
  final descricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<SistemaLabel>> sistemaEntries =
        <DropdownMenuEntry<SistemaLabel>>[];
    for (final SistemaLabel sistema in SistemaLabel.values) {
      sistemaEntries.add(DropdownMenuEntry<SistemaLabel>(
        value: sistema,
        label: sistema.label,
      ));
    }

    final sistema = TextEditingController();

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
                    'Formulário de Perfil de Acesso',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                DropdownForm(
                  titulo: 'Sistema',
                  controller: sistema,
                  dropdownMenuEntries: sistemaEntries,
                ),
                TextfieldForm(
                  titulo: 'Perfil de Acesso',
                  controller: perfil,
                  maxLength: 20,
                ),
                TextfieldForm(
                  titulo: 'Descrição',
                  controller: descricao,
                  maxLength: 200,
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

                          print("sistema => " + sistema.text);
                          print("idSistema => " + perfil.text);
                          print("nomeSistema => " + descricao.text);
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
