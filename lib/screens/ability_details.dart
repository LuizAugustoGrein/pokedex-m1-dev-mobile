// importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/ability/ability_detail_title.dart';

// criação do widget do tipo stateless (dados não mutáveis)
class AbilityDetails extends StatelessWidget {

  // construtor de classe
  const AbilityDetails({
    Key? key
  }) : super(key: key);

  // construção do widget
  @override
  Widget build(BuildContext context) {
    
    final arguments = ModalRoute.of(context)!.settings.arguments as AbilityScreenData;

    return Scaffold(
      // definição de estilos
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        // definição de espacamento interno
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
                // chamando widget de AbilityDetailTitle com parametros
                child: AbilityDetailTitle(
                  id: arguments.id,
                  name: arguments.name,
                ),
              ), 
            )
          ],
        ),
      ),
      // definindo botão flutuante de retorno de pagina
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
