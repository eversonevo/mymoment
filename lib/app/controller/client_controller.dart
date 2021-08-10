
import 'package:get/get.dart';
import 'package:my_moment/app/data/model/product.dart';
import 'package:my_moment/app/data/repository/client_repository.dart';

class ClientController extends GetxController {
  final ClientRepository clientRepository = ClientRepository();

  RxList<Product> testeProd = <Product>[].obs;
  //List<Product> _testeProd = [];

  RxString teste = "HOME".obs;

  //get testando => teste.value;

  Product product = Product(
      idProduct: "001",
      description: "produto teste",
      title: "titulo",
      price: "20,00");

  @override
  void onInit() async {
    //testeProd.value = await productRepository.carregaJson();
    //print("tamanho:${testeProd.length}");
    //print("passei antes");
    super.onInit();
  }

  carregaJson() {
    print("nonono" + testeProd[1].idProduct);
  }

  insereDB(){
    clientRepository.insertDB();
  }

  createDB() {
    clientRepository.openBD();
  }

  getAll() async{
    clientRepository.getAllDB();    
  }

}
