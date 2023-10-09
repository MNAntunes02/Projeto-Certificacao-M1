import 'package:flutter/material.dart';

class TextfieldForm extends StatelessWidget {
  const TextfieldForm({
    Key? key,
    required this.titulo,
    required this.controller,
    required this.maxLength,
  }) : super(key: key);

  final String titulo;
  final TextEditingController controller;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
            child: TextFormField(
              controller: controller,
              maxLength: maxLength,
              decoration: const InputDecoration(
                filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Esse campo é obrigatório';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
