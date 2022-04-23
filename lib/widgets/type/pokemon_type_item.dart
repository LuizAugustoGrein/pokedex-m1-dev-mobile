// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeScreenData.dart';

// widget imutável
class TypeItem extends StatelessWidget {
  
  // variáveis
  final int id;
  final String name;

  // construtor de classe com parametros obrigatorios
  const TypeItem({
    Key? key, 
    required this.id,
    required this.name,
  }) : super(key: key);

  // criação de widget TypeItem
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
            "/type/details",
            arguments: TypeScreenData(id, name),

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