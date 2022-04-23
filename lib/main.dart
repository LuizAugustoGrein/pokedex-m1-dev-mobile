// importações
import 'package:flutter/material.dart';

import 'package:unc_flutter_pokedex/screens/details.dart';
import 'package:unc_flutter_pokedex/screens/home.dart';

import 'package:unc_flutter_pokedex/screens/type.dart';
import 'package:unc_flutter_pokedex/screens/type_details.dart';

import 'package:unc_flutter_pokedex/screens/ability.dart';
import 'package:unc_flutter_pokedex/screens/ability_details.dart';

import 'package:unc_flutter_pokedex/screens/move.dart';
import 'package:unc_flutter_pokedex/screens/move_details.dart';

import 'package:unc_flutter_pokedex/screens/item.dart';
import 'package:unc_flutter_pokedex/screens/item_details.dart';

void main() {
  // chamando o App para execuçao
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokédex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // iniciando o conceito de navegação por rotas
      initialRoute: "/",
      routes: {

        // rotas para Pokemons
        "/":(context) => const Home(),
        "/details": (context) => const Details(),

        // rotas para Types
        "/type": (context) => const HomeType(),
        "/type/details": (context) => const TypeDetails(),

        // rotas para Abilities
        "/ability": (context) => const HomeAbility(),
        "/ability/details": (context) => const AbilityDetails(),

        // rotas para Moves
        "/move": (context) => const HomeMove(),
        "/move/details": (context) => const MoveDetails(),

        // rotas para Items
        "/item": (context) => const HomeItem(),
        "/item/details": (context) => const ItemDetails(),
        
      },
    );
  }
}
