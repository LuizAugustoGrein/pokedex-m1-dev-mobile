// importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets/ability/pokemon_ability_list.dart';

// classe mutável
class HomeAbility extends StatefulWidget {

  const HomeAbility({
    Key? key
  }) : super(key: key);

  @override
  State<HomeAbility> createState() => _HomeAbilityState();

}

class _HomeAbilityState extends State<HomeAbility> {
  List<Ability> ability = List.empty();

  @override
  void initState() {
    super.initState();
    getAbilityFromPokeApi();
  }

  // recebimento dos pokemons de uma forma assíncrona
  void getAbilityFromPokeApi() async {
    // chamando função da classe PokeAPI
    PokeAPI.getAbility().then((response) {
      // decodificando os dados recebidos para o formato List
      List<Map<String, dynamic>> data = List.from(json.decode(response.body)['results']);
      // definindo valores para a lista de pokemons
      setState(() {
        ability = data.asMap().entries.map<Ability>((element) {
          element.value['id'] = element.key + 1;
          return Ability.fromJson(element.value);
        }).toList();
      });
    });
  }

  // criação do widget HomeAbility
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criação de AppBar (header)
      appBar: AppBar(
        title: const Text("Pokedex - Abilities"),
      ),
      // chamando widget de AbilityList com parametros no body 
      body: AbilityList(ability: ability),
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
