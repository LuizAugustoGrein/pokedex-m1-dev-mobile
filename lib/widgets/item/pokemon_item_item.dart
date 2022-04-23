// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';

// widget imutável
class ItemItem extends StatelessWidget {
  
  // variáveis
  final int id;
  final String name;

  // construtor de classe com parametros obrigatorios
  const ItemItem({
    Key? key, 
    required this.id,
    required this.name,
  }) : super(key: key);

  // criação de widget ItemItem
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
            "/item/details",
            arguments: ItemScreenData(id, name),

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