// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets/item/pokemon_item_item.dart';

// widget com valores e estado mutáveis
class ItemList extends StatefulWidget {
  
  // definindo lista
  final List<Item> item;

  // construtor com lista obrigatória
  const ItemList({
    Key? key, 
    required this.item
  }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();

}

// criação de widget ItemList
class _ItemListState extends State<ItemList> {

  @override
  Widget build(BuildContext context) {

    // definindo lista com itens separados
    return ListView.separated(

      // definindo estilo e extensão de linhas 
      padding: const EdgeInsets.all(8),
      itemCount: widget.item.length,
      itemBuilder: (BuildContext context, int index) {

        // retorna linha com o envio dos parametros
        return ItemItem(id: widget.item[index].id, name: widget.item[index].name);

      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );

  }
}