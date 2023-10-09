import 'package:flutter/material.dart';
import 'package:flutter_app/models/matriz_sod.dart';

class ConsultaTabelaMatrizSod extends StatefulWidget {
  const ConsultaTabelaMatrizSod({Key? key}) : super(key: key);

  @override
  _ConsultaTabelaMatrizSodState createState() =>
      _ConsultaTabelaMatrizSodState();
}

class _ConsultaTabelaMatrizSodState extends State<ConsultaTabelaMatrizSod> {
  final allColumns = <String>[
    'ID Sistema 1',
    'Sistema 1',
    'ID Sistema 2',
    'Sistema 2',
  ];

  //============================
  List<MatrizSod> allMatrizSod = [
    const MatrizSod(
      idSistema1: '001',
      nomePerfil1: 'S001',
      idSistema2: '001',
      nomePerfil2: 'S001',
    ),
    const MatrizSod(
      idSistema1: '002',
      nomePerfil1: 'S002',
      idSistema2: '002',
      nomePerfil2: 'S002',
    ),
    const MatrizSod(
      idSistema1: '003',
      nomePerfil1: 'S003',
      idSistema2: '003',
      nomePerfil2: 'S003',
    ),
    const MatrizSod(
      idSistema1: '004',
      nomePerfil1: 'S004',
      idSistema2: '004',
      nomePerfil2: 'S004',
    ),
  ];

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
                    'Tabela Matriz SoD',
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
                rows: allMatrizSod.map((matriz) {
                  return DataRow(cells: [
                    //==========================================
                    //altere para o padrão da classe em questão
                    //==========================================
                    DataCell(Text(matriz.idSistema1)),
                    DataCell(Text(matriz.nomePerfil1)),
                    DataCell(Text(matriz.idSistema2)),
                    DataCell(Text(matriz.nomePerfil2)),
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
