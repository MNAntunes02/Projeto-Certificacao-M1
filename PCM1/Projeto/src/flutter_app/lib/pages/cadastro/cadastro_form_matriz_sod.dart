import 'package:flutter/material.dart';
import 'package:flutter_app/components/public/dropdown_form.dart';

class CadastroFormMatrizSod extends StatefulWidget {
  const CadastroFormMatrizSod({Key? key}) : super(key: key);

  @override
  _CadastroFormMatrizSodState createState() => _CadastroFormMatrizSodState();
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

class _CadastroFormMatrizSodState extends State<CadastroFormMatrizSod> {
  // final _formKey = GlobalKey<FormState>();

  final nomeSistema = TextEditingController();
  final idSistema = TextEditingController();

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

    final sistema1 = TextEditingController();
    final sistema2 = TextEditingController();
    final perfil1 = TextEditingController();
    final perfil2 = TextEditingController();

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
                    'Formulário de Matriz SoD',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                DropdownForm(
                  titulo: 'Sistema 1',
                  controller: sistema1,
                  dropdownMenuEntries: sistemaEntries,
                ),
                DropdownForm(
                  titulo: 'Perfil de Acesso 1',
                  controller: perfil1,
                  dropdownMenuEntries: perfilAcessoEntries,
                ),
                DropdownForm(
                  titulo: 'Sistema 2',
                  controller: sistema2,
                  dropdownMenuEntries: sistemaEntries,
                ),
                DropdownForm(
                  titulo: 'Perfil de Acesso 2',
                  controller: perfil2,
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

                          print("sistema1 => " + sistema1.text);
                          print("perfil1 => " + perfil1.text);
                          print("sistema2 => " + sistema2.text);
                          print("perfil2 => " + perfil2.text);
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
