// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets/ability/pokemon_ability_item.dart';

// widget com valores e estado mutáveis
class AbilityList extends StatefulWidget {
  
  // definindo lista
  final List<Ability> ability;

  // construtor com lista obrigatória
  const AbilityList({
    Key? key, 
    required this.ability
  }) : super(key: key);

  @override
  State<AbilityList> createState() => _AbilityListState();

}

// criação de widget AbilityList
class _AbilityListState extends State<AbilityList> {

  @override
  Widget build(BuildContext context) {

    // definindo lista com itens separados
    return ListView.separated(

      // definindo estilo e extensão de linhas 
      padding: const EdgeInsets.all(8),
      itemCount: widget.ability.length,
      itemBuilder: (BuildContext context, int index) {

        // retorna linha com o envio dos parametros
        return AbilityItem(id: widget.ability[index].id, name: widget.ability[index].name);

      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );

  }
}