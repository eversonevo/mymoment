

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:my_moment/app/data/model/product.dart';
import 'package:my_moment/app/data/repository/repository_product.dart';

class ProductProvider implements ProductRepository {


Future<String> _carregaJson() async {
  return await rootBundle.loadString('lib/app/files/arquivoJson.json');
}

@override
Future<List<Product>> carregaJson() async {
  
  //carrega Json
  String jsonString = await _carregaJson();
  
  // transforma String
  final jsonResponse = json.decode(jsonString);

  //print(jsonResponse);

  List<Product> products;
  /* lista vários produtos  exemplo de json
  {
    "products":{
      "id" = "1",
      "name" = "Pedro",
      "idade" = "30"
    }

  }*/
  products = (jsonResponse["products"] as List).map((product) => Product.fromJson(product)).toList();

  //var products = Product.fromJson(jsonResponse);

  print("iuuu"+products[2].description);

  return products;
}

  @override
  List<Product> lista = [];


}