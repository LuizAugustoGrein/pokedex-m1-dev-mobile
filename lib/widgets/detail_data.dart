// importação
import 'package:flutter/material.dart';

// widget imutável
class DetailData extends StatelessWidget {

  // construtor
  const DetailData({Key? key}) : super(key: key);

  // widget DetailData
  @override
  Widget build(BuildContext context) {
    return Container(

      // definição de tamanho
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),

      // definição de estilos
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),

      // dados
      child: Column(
        children: [],
      ),
      
    );
  }
}
