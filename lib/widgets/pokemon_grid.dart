// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card.dart';

// widget do tipo stateful (dados mutáveis)
class PokemonGrid extends StatefulWidget {
  // criando a listagem que irá receber os Pokemon
  final List<Pokemon> pokemon;

  // construção de classe com parametro obrigarório
  const PokemonGrid({
    Key? key, 
    required this.pokemon
  }) : super(key: key);

  @override
  State<PokemonGrid> createState() => _PokemonGridState();

}

class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    // obtendo a largura da tela do dispositivo
    final width = MediaQuery.of(context).size.width;
    // determinando o número de colunas da grade
    // com base na largura do dispositivo
    final crossAxisCount = (width > 1000)
        ? 5
        : (width > 700)
            ? 4
            : (width > 450)
                ? 3
                : 2;

    // criação de uma grid view de acordo com a quantidade de registros
    return GridView.count(
      // definição de estilo
      padding: const EdgeInsets.all(7),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      // população do Grid View com o widget PokemonCard com o envio dos parametros
      children: widget.pokemon
          .map(
            (pokemon) => PokemonCard(
              id: pokemon.id,
              name: pokemon.name,
              image: pokemon.img,
            ),
          )
          .toList(),
    );
  }
}
