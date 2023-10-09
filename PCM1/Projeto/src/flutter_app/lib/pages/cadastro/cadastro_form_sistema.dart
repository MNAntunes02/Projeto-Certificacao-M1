import 'package:flutter/material.dart';
import 'package:flutter_app/components/public/textfield_form.dart';

class CadastroFormSistema extends StatefulWidget {
  const CadastroFormSistema({Key? key}) : super(key: key);

  @override
  _CadastroFormSistemaState createState() => _CadastroFormSistemaState();
}

class _CadastroFormSistemaState extends State<CadastroFormSistema> {
  final _formKey = GlobalKey<FormState>();

  final nomeSistema = TextEditingController();
  final idSistema = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Formulário de Sistema',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextfieldForm(
                  titulo: 'ID Sistema',
                  controller: idSistema,
                  maxLength: 15,
                ),
                TextfieldForm(
                  titulo: 'Nome do Sistema',
                  controller: nomeSistema,
                  maxLength: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                showCloseIcon: true,
                                backgroundColor: Color(0xFF008000),
                                content: Text(
                                  'Sistema Cadastrado!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70),
                                ),
                              ),
                            );

                            print("idSistema => " + idSistema.text);
                            print("nomeSistema => " + nomeSistema.text);
                          } else {
                            print("Erro ao tentar cadastrar");
                          }
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

  @override
  void dispose() {
    nomeSistema.dispose();
    idSistema.dispose();
    super.dispose();
  }
}
