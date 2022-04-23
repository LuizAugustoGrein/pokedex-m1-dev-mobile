// importação
import 'package:flutter/material.dart';

// widget não mutável
class DetailBackButton extends StatelessWidget {

  // construtor
  const DetailBackButton({Key? key}) : super(key: key);

  // widget
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      // botão para retorno (com ação para remover a última "folha" da rota)
      onPressed: () => Navigator.pop(context),
      tooltip: "Voltar",
      label: const Text("Voltar"),
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}
