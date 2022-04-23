// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_background.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_data.dart';

// widget stateless (não mutável)
class PokemonCard extends StatelessWidget {

  // definição das variáveis
  final int id;
  final String name;
  final String image;

  // construtor de classe com as variáveis obrigatórias
  const PokemonCard({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
  }) : super(key: key);

  // definindo uma box com border e border radius
  BoxDecoration getContainerDecoration() => BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    border: Border.all(color: Colors.grey.withOpacity(0.24), width: 1),
  );

  // criação do widget do card
  @override
  Widget build(BuildContext context) {
    return Material(

      // definindo estilos
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(

        // definindo estilo e evento de clique
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          // direciona para a página detalhes com um model de valores
          Navigator.pushNamed(
            context,
            "/details",
            arguments: PokemonScreenData(id, name, image),
          )
        },

        // chamando widget de background e card data com parametros
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              PokemonCardBackground(id: id),
              PokemonCardData(name: name, image: image),
            ],
          ),
        ),

      ),
    );
  }
}
