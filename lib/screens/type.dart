// importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets/type/pokemon_type_list.dart';

// classe mutável
class HomeType extends StatefulWidget {

  const HomeType({
    Key? key
  }) : super(key: key);

  @override
  State<HomeType> createState() => _HomeTypeState();

}

class _HomeTypeState extends State<HomeType> {
  List<Type> type = List.empty();

  @override
  void initState() {
    super.initState();
    getTypeFromPokeApi();
  }

  // recebimento dos pokemons de uma forma assíncrona
  void getTypeFromPokeApi() async {
    // chamando função da classe PokeAPI
    PokeAPI.getType().then((response) {
      // decodificando os dados recebidos para o formato List
      List<Map<String, dynamic>> data = List.from(json.decode(response.body)['results']);
      // definindo valores para a lista de pokemons
      setState(() {
        type = data.asMap().entries.map<Type>((element) {
          element.value['id'] = element.key + 1;
          return Type.fromJson(element.value);
        }).toList();
      });
    });
  }

  // criação do widget HomeType
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criação de AppBar (header)
      appBar: AppBar(
        title: const Text("Pokedex - Types"),
      ),
      // chamando widget de TypeList com parametros no body 
      body: TypeList(type: type),
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
