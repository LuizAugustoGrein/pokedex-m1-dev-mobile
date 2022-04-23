// importações
import 'dart:async';
import 'package:http/http.dart' as http;

// definição de classe PokeAPI
class PokeAPI {

  // Função para retornar Pokemons da API pokeapi
  static Future<http.Response> getPokemon() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=1200"));

  // Função para retornar Types da API pokeapi
  static Future<http.Response> getType() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/type"));

  // Função para retornar Abilities da API pokeapi
  static Future<http.Response> getAbility() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/ability?limit=400"));

  // Função para retornar Moves da API pokeapi
  static Future<http.Response> getMove() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/move?limit=900"));

  // Função para retornar Items da API pokeapi
  static Future<http.Response> getItem() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/item?limit=1700"));

}
