import 'package:get/get.dart';

class HomeController extends GetxController {

//final MyRepository repository;

HomeController();

  final _teste = ''.obs;
  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
  
  set teste(value) => this.teste.value = value;
  get teste => this._teste.value;
}
