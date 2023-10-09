import 'package:flutter/material.dart';

class CardConsulta extends StatelessWidget {
  const CardConsulta({
    Key? key,
    required this.image,
    required this.titulo,
    required this.rota,
    required this.icon,
    required this.iconAction,
  }) : super(key: key);

  final String image;
  final String titulo;
  final String rota;
  final IconData icon;
  final IconData iconAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      width: 380,
                      height: 200,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(icon),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            titulo,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton.small(
                        heroTag: null,
                        onPressed: () {
                          Navigator.pushNamed(context, rota);
                        },
                        tooltip: 'Consultar',
                        elevation: 0,
                        focusElevation: 0,
                        child: Icon(iconAction),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
