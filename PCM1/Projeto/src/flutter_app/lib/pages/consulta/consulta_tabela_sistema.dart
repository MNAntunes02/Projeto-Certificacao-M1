import 'package:flutter/material.dart';
import 'package:flutter_app/models/sistema.dart';

class ConsultaTabelaSistema extends StatefulWidget {
  const ConsultaTabelaSistema({super.key});

  @override
  State<ConsultaTabelaSistema> createState() => _ConsultaTabelaSistemaState();
}

class _ConsultaTabelaSistemaState extends State<ConsultaTabelaSistema> {
  final allColumns = <String>[
    'ID Sistema',
    'Sistema',
  ];

  //============================
  List<Sistema> allSistemas = [
    const Sistema(
      idSistema: '001',
      sistema: 'S001',
    ),
    const Sistema(
      idSistema: '002',
      sistema: 'S002',
    ),
    const Sistema(
      idSistema: '003',
      sistema: 'S003',
    ),
    const Sistema(
      idSistema: '004',
      sistema: 'S004',
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
                    'Tabela Sistema',
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
                rows: allSistemas.map((sistema) {
                  return DataRow(cells: [
                    //==========================================
                    //altere para o padrão da classe em questão
                    //==========================================
                    DataCell(Text(sistema.idSistema)),
                    DataCell(Text(sistema.sistema)),
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
