


import 'package:my_moment/app/data/model/product.dart';
import 'package:my_moment/app/data/provider/provider_produtct.dart';

class ProductRepository {

  final ProductProvider _productProvider = ProductProvider();
  List<Product> lista = [];

Future<List<Product>> carregaJson() async {
  lista = await _productProvider.carregaJson();  
  print("eokp"+lista[1].price);
  return(lista);
}


}