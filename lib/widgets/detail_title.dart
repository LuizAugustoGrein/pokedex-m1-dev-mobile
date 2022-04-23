// importação
import 'package:flutter/material.dart';

// widget não mutável
class DetailTitle extends StatelessWidget {

  // definição de construtor e parametros obrigatorios
  final int id;
  final String name;

  const DetailTitle({
    Key? key, 
    required this.id, 
    required this.name
  }) : super(key: key);

  // widget de titulo de detalhes
  @override
  Widget build(BuildContext context) {

    // criação de chip (elemento com borda redonda) com estilos
    return Chip(
      backgroundColor: Colors.white,

      // definição de texto interno do chip
      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),

      // definição de elemento circular para exibição de id
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
      
    );
  }
}
