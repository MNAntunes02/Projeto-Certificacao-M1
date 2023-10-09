import 'package:flutter/material.dart';

class SistemaLabel {
  const SistemaLabel(this.label);
  final String label;
}

class PerfilAcessoLabel {
  const PerfilAcessoLabel(this.label);
  final String label;
}

class DropdownForm extends StatelessWidget {
  const DropdownForm(
      {Key? key,
      required this.titulo,
      required this.controller,
      required this.dropdownMenuEntries})
      : super(key: key);

  final String titulo;
  final TextEditingController controller;
  final List<DropdownMenuEntry<dynamic>> dropdownMenuEntries;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(titulo),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              children: [
                DropdownMenu<dynamic>(
                  controller: controller,
                  menuHeight: 200,
                  width: 484,
                  enableFilter: false,
                  dropdownMenuEntries: dropdownMenuEntries,
                  inputDecorationTheme:
                      const InputDecorationTheme(filled: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
