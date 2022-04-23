// importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets/move/pokemon_move_list.dart';

// classe mutável
class HomeMove extends StatefulWidget {

  const HomeMove({
    Key? key
  }) : super(key: key);

  @override
  State<HomeMove> createState() => _HomeMoveState();

}

class _HomeMoveState extends State<HomeMove> {
  List<Move> move = List.empty();

  @override
  void initState() {
    super.initState();
    getMoveFromPokeApi();
  }

  // recebimento dos pokemons de uma forma assíncrona
  void getMoveFromPokeApi() async {
    // chamando função da classe PokeAPI
    PokeAPI.getMove().then((response) {
      // decodificando os dados recebidos para o formato List
      List<Map<String, dynamic>> data = List.from(json.decode(response.body)['results']);
      // definindo valores para a lista de pokemons
      setState(() {
        move = data.asMap().entries.map<Move>((element) {
          
          element.value['id'] = element.key + 1;

          return Move.fromJson(element.value);
        }).toList();
      });
      
    });

  }

  // criação do widget HomeMove
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criação de AppBar (header)
      appBar: AppBar(
        title: const Text("Pokedex - Moves"),
      ),
      // chamando widget de MoveList com parametros no body 
      body: MoveList(move: move),
      // criação de botão flutuante para compartilhamento
      floatingActionButton: FloatingActionButton(
        // ação do botão quando pressionado
        onPressed: () {},
        // definindo formato e icone do botão
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
