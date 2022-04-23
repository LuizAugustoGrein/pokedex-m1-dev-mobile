// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets/type/pokemon_type_item.dart';

// widget com valores e estado mutáveis
class TypeList extends StatefulWidget {
  
  // definindo lista
  final List<Type> type;

  // construtor com lista obrigatória
  const TypeList({
    Key? key, 
    required this.type
  }) : super(key: key);

  @override
  State<TypeList> createState() => _TypeListState();

}

// criação de widget TypeList
class _TypeListState extends State<TypeList> {

  @override
  Widget build(BuildContext context) {

    // definindo lista com itens separados
    return ListView.separated(

      // definindo estilo e extensão de linhas 
      padding: const EdgeInsets.all(8),
      itemCount: widget.type.length,
      itemBuilder: (BuildContext context, int index) {

        // retorna linha com o envio dos parametros
        return TypeItem(id: widget.type[index].id, name: widget.type[index].name);

      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );

  }
}