// importação
import 'package:flutter/material.dart';

// widget imutável
class PokemonCardData extends StatelessWidget {

  // definição de valores
  final String name;
  final String image;

  // construtor com valores obrigatórios
  const PokemonCardData({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  // criação de widget card data
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // definição de estilos e imagem do card
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),

        // divisor de linha
        const Divider(),

        // criação de texto com estilo (nome do pokemon no card)
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 21,
            color: Colors.black87,
          ),
        )

      ],
    );
  }
}
