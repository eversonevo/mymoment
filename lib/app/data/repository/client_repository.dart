import 'package:my_moment/app/data/provider/provider_client.dart';

class ClientRepository {
  final ClientProvider _clientProvider = ClientProvider();
  //List<Product> lista = [];

  void openBD() {
    _clientProvider.openBD();
  }

  void insertDB() {
    _clientProvider.insertDB();
  }

  void deleteDB(String idClient) {
    _clientProvider.deleteDB(idClient);
  }

  void updateDB(String idClient) {
    _clientProvider.updateDB(idClient);
  }

  void searchDB(String item) {
    _clientProvider.searchDB(item);
  }

  void getAllDB() {
    _clientProvider.getAllDB();    
  }
}
