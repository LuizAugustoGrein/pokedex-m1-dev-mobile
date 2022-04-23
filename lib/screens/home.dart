// importações de classes e widgets
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_grid.dart';
import 'package:unc_flutter_pokedex/widgets/nav-drawer.dart';

// criação de classe com dados mutáveis
class Home extends StatefulWidget {

  const Home({
    Key? key
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  
  // definindo lista de pokemons limpa
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();
  }

  // recebimento dos pokemons de uma forma assíncrona
  void getPokemonFromPokeApi() async {

    // chamando função da classe PokeAPI
    PokeAPI.getPokemon().then((response) {

      // decodificando os dados recebidos para o formato List
      List<Map<String, dynamic>> data = List.from(json.decode(response.body)['results']);
      
      // definindo valores para a lista de pokemons
      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();

      });
    });
  }

  // criação do widget principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // criação de AppBar (header)
      appBar: AppBar(
        title: const Text("Pokedex"),
      ),

      // chamando barra lateral
      drawer: NavDrawer(),

      // chamando widget de PokemonGrid com parametros no body 
      body: PokemonGrid(pokemon: pokemon),

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
