// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/type/type_detail_title.dart';

// widget imutável
class TypeDetails extends StatelessWidget {

  // construtor de classe
  const TypeDetails({
    Key? key
  }) : super(key: key);

  // widget TypeDetails
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as TypeScreenData;
    // definição de um Scaffold (estrutura básica de layout)
    return Scaffold(
      // definição de cor de fundo
      backgroundColor: Colors.grey,
      // definição do body com uma scroll view simples
      body: SingleChildScrollView(
        // definição de um espaçamento interno
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        // definição de fisica de rolagem para ir além do limite do conteudo
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                // construção de widget com seus parâmetros
                child: TypeDetailTitle(
                  id: arguments.id,
                  name: arguments.name,
                ),
              ), 
            )
          ],
        ),
      ),
      // botão flutuante para retorno de página
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
