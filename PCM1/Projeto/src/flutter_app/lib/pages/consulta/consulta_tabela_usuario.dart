import 'package:flutter/material.dart';
import 'package:flutter_app/models/usuario.dart';

class ConsultaTabelaUsuario extends StatefulWidget {
  const ConsultaTabelaUsuario({Key? key}) : super(key: key);

  @override
  _ConsultaTabelaUsuarioState createState() => _ConsultaTabelaUsuarioState();
}

class _ConsultaTabelaUsuarioState extends State<ConsultaTabelaUsuario> {
  //============================
  //nome das colunas
  //============================
  final allColumns = <String>[
    'CPF',
    'Sistema',
    'Perfil de Acesso',
  ];
  //============================
  //fim da alteração
  //============================
  //==========================================
  //dados fixos para preencher a tabela
  //==========================================
  List<Usuario> allUsuarios = [
    const Usuario(
      cpf: '000.000.000-00',
      sistema: 'S001',
      perfil: 'Perfil de Acesso 1 - S001',
    ),
    const Usuario(
      cpf: '000.000.000-00',
      sistema: 'S001',
      perfil: 'Perfil de Acesso 2 - S001',
    ),
    const Usuario(
      cpf: '000.000.000-00',
      sistema: 'S002',
      perfil: 'Perfil de Acesso 1 - S002',
    ),
    const Usuario(
      cpf: '111.111.111-00',
      sistema: 'S002',
      perfil: 'Perfil de Acesso 2 - S002',
    ),
  ];
  //==========================================
  //fim da alteração
  //==========================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    //==================
                    //nome da tabela
                    //==================
                    'Tabela Usuários',
                    //==================
                    //fim da alteração
                    //==================
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: DataTable(
                columns: allColumns.map((column) {
                  return DataColumn(label: Text(column));
                }).toList(),
                rows: allUsuarios.map((usuario) {
                  return DataRow(cells: [
                    //==========================================
                    //altere para o padrão da classe em questão
                    //==========================================
                    DataCell(Text(usuario.cpf)),
                    DataCell(Text(usuario.sistema)),
                    DataCell(Text(usuario.perfil)),
                    //==========================================
                    //fim da alteração
                    //==========================================
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
    // return
  }
}
