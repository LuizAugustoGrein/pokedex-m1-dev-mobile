// importação
import 'package:flutter/material.dart';

// widget com dados imutáveis
class AbilityDetailTitle extends StatelessWidget {

  // definição de variáveis
  final int id;
  final String name;

  // construtor de classe com parametros obrigatórios
  const AbilityDetailTitle({
    Key? key, 
    required this.id, 
    required this.name
  }) : super(key: key);

  // criação de widget TypeDetailTitle
  @override
  Widget build(BuildContext context) {

    // criação de elemento Chip (elemento com bordas arredondadas)
    return Chip(

      // definição de estilo de cor
      backgroundColor: Colors.white,

      // definição de texto mostrando as informações
      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(

          // definição de estilo de texto
          fontSize: 40,
          color: Colors.black,

        ),
      ),

      // criação de elemento de forma circular exibindo o id
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
      
    );
  }
}
