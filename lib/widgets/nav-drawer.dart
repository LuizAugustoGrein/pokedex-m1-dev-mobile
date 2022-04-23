import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {

  // widget de barra lateral
  @override
  Widget build(BuildContext context) {

    // criação de um Drawer (barra lateral)
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          // cabecalho do menu
          const DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 87, 53),
            ),
          ),

          // lista de opcoes com suas rotas
          ListTile(
            title: const Text(
              'Pokemons',
              style: TextStyle(
                color: Colors.black87, 
                fontSize: 25
              ),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Types',
              style: TextStyle(
                color: Colors.black87, 
                fontSize: 25
              ),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/type",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Abilities',
              style: TextStyle(
                color: Colors.black87, 
                fontSize: 25
              ),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/ability",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Moves',
              style: TextStyle(
                color: Colors.black87, 
                fontSize: 25
              ),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/move",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Items',
              style: TextStyle(
                color: Colors.black87, 
                fontSize: 25
              ),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/item",
              )
            },
          ),
        ],
      ),
    );

  }

}