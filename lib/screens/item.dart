// importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets/item/pokemon_item_list.dart';

// classe mutável
class HomeItem extends StatefulWidget {

  const HomeItem({
    Key? key
  }) : super(key: key);

  @override
  State<HomeItem> createState() => _HomeItemState();

}

class _HomeItemState extends State<HomeItem> {
  List<Item> item = List.empty();

  @override
  void initState() {
    super.initState();
    getItemFromPokeApi();
  }

  // recebimento dos pokemons de uma forma assíncrona
  void getItemFromPokeApi() async {
    // chamando função da classe PokeAPI
    PokeAPI.getItem().then((response) {
      // decodificando os dados recebidos para o formato List
      List<Map<String, dynamic>> data = List.from(json.decode(response.body)['results']);
      // definindo valores para a lista de pokemons
      setState(() {
        item = data.asMap().entries.map<Item>((element) {
          element.value['id'] = element.key + 1;
          return Item.fromJson(element.value);
        }).toList();
      });
    });
  }

  // criação do widget HomeItem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // criação de AppBar (header)
      appBar: AppBar(
        title: const Text("Pokedex - Items"),
      ),
      // chamando widget de ItemList com parametros no body 
      body: ItemList(item: item),
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
