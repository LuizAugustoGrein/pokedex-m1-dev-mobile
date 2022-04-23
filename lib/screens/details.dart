// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/detail_data.dart';
import 'package:unc_flutter_pokedex/widgets/detail_image.dart';
import 'package:unc_flutter_pokedex/widgets/detail_title.dart';

// Widget Details do tipo Stateless (dados não mutáveis)
class Details extends StatelessWidget {

  // definindo construtor de classe
  const Details({
    Key? key
  }) : super(key: key);

  // criação de Widget Detalhes
  @override
  Widget build(BuildContext context) {

    // recebimento de valores
    final arguments = ModalRoute.of(context)!.settings.arguments as PokemonScreenData;

    // definição de um Scaffold (estrutura básica de layout)
    return Scaffold(

      // definição de cor de fundo
      backgroundColor: Colors.black,

      // definição do body com uma scroll view simples
      body: SingleChildScrollView(

        // definição de um espaçamento interno
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        // definição de fisica de rolagem para ir além do limite do conteudo
        physics: const BouncingScrollPhysics(),

        // criação de uma coluna com filhos
        child: Column(
          children: [
            
            // construção de widgets com seus parâmetros
            DetailImage(image: arguments.image),
            DetailTitle(
              id: arguments.id,
              name: arguments.name,
            ),
            DetailData(),
          ],
        ),
      ),

      // botão flutuante para retorno de página
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
