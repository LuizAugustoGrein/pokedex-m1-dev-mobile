// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets/move/pokemon_move_item.dart';

// widget com valores e estado mutáveis
class MoveList extends StatefulWidget {
  
  // definindo lista
  final List<Move> move;

  // construtor com lista obrigatória
  const MoveList({
    Key? key, 
    required this.move
  }) : super(key: key);

  @override
  State<MoveList> createState() => _MoveListState();

}

// criação de widget MoveList
class _MoveListState extends State<MoveList> {

  @override
  Widget build(BuildContext context) {

    // definindo lista com itens separados
    return ListView.separated(

      // definindo estilo e extensão de linhas 
      padding: const EdgeInsets.all(8),
      itemCount: widget.move.length,
      itemBuilder: (BuildContext context, int index) {

        // retorna linha com o envio dos parametros
        return MoveItem(id: widget.move[index].id, name: widget.move[index].name);

      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );

  }
}