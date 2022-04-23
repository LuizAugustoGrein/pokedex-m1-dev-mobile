// importação
import 'package:flutter/material.dart';

// widget imutável
class DetailImage extends StatelessWidget {

  // construtor de classe com parametro obrigatorio
  final String image;
  
  const DetailImage({
    Key? key, 
    required this.image
  }) : super(key: key);

  // criação de widget de imagem de detalhes
  @override
  Widget build(BuildContext context) {
    return Container(
      
      // definição de tamanho e estilos
      constraints: const BoxConstraints(maxHeight: 500),
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            
            // fundo em formato de cirulo com tamanho e cor definida
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white60,
                shape: BoxShape.circle,
              ),
            ),

            // imagem redimensionada para o tamanho do elemento pai
            Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.topRight,
            )

          ],
        ),
      ),
    );
  }
}
