// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveScreenData.dart';

// widget imutável
class MoveItem extends StatelessWidget {
  
  // variáveis
  final int id;
  final String name;

  // construtor de classe com parametros obrigatorios
  const MoveItem({
    Key? key, 
    required this.id,
    required this.name,
  }) : super(key: key);

  // criação de widget MoveItem
  @override
  Widget build(BuildContext context) {

    return Container(
      
      // definindo altura da linha
      height: 50,

      child: GestureDetector(

        // definindo ação quando clicado
        onTap: () => {
          Navigator.pushNamed(

            // quando clicado, é enviado para pagina de detalhes
            context,
            "/move/details",
            arguments: MoveScreenData(id, name),

          )
        },

        // definindo texto na linha com estilo
        child: Text(
          '${id} - ${name[0].toUpperCase()}${name.substring(1)}',
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),

      )
    );

  }
}