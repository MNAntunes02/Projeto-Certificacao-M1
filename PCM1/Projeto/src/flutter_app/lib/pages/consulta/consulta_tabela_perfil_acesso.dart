import 'package:flutter/material.dart';
import 'package:flutter_app/models/perfil_acesso.dart';

class ConsultaTabelaPerfilAcesso extends StatefulWidget {
  const ConsultaTabelaPerfilAcesso({Key? key}) : super(key: key);

  @override
  _ConsultaTabelaPerfilAcessoState createState() =>
      _ConsultaTabelaPerfilAcessoState();
}

class _ConsultaTabelaPerfilAcessoState
    extends State<ConsultaTabelaPerfilAcesso> {
//============================
  //nome das colunas
  //============================
  final allColumns = <String>[
    'ID Sistema',
    'Perfil',
    'Descrição',
  ];
  //============================
  //fim da alteração
  //============================
  //==========================================
  //dados fixos para preencher a tabela
  //==========================================
  List<PerfilAcesso> allPerfilAcesso = [
    const PerfilAcesso(
      idSistema: '001',
      perfil: 'Perfil de Acesso 1 - S001',
      descricao: 'Descrição do perfil de acesso 1 do sistema 1',
    ),
    const PerfilAcesso(
      idSistema: '001',
      perfil: 'Perfil de Acesso 2 - S001',
      descricao: 'Descrição do perfil de acesso 2 do sistema 1',
    ),
    const PerfilAcesso(
      idSistema: '001',
      perfil: 'Perfil de Acesso 1 - S002',
      descricao: 'Descrição do perfil de acesso 1 do sistema 2',
    ),
    const PerfilAcesso(
      idSistema: '002',
      perfil: 'Perfil de Acesso 2 - S002',
      descricao: 'Descrição do perfil de acesso 2 do sistema 2',
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
                    'Tabela Perfil de Acesso',
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
                rows: allPerfilAcesso.map((usuario) {
                  return DataRow(cells: [
                    //==========================================
                    //altere para o padrão da classe em questão
                    //==========================================
                    DataCell(Text(usuario.idSistema)),
                    DataCell(Text(usuario.perfil)),
                    DataCell(Text(usuario.descricao)),
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
