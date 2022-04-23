// importação
import 'package:flutter/material.dart';

// widget imutável
class PokemonCardBackground extends StatelessWidget {

  // parametros
  final int id;

  // construtor com parametro obrigatório
  const PokemonCardBackground({
    Key? key, 
    required this.id
  }) : super(key: key);

  // criação de widget do background do card
  @override
  Widget build(BuildContext context) {

    // criação de texto com estilo de tamanho e cor, indicando o id
    return Text(
      "$id",
      style: TextStyle(
        fontSize: 101,
        fontWeight: FontWeight.bold,
        color: Colors.grey[200],
      ),
    );

  }
}
