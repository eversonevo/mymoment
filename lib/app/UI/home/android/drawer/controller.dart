import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerFadetrollerFade extends GetxController {

    Rx<CrossFadeState> teste= CrossFadeState.showFirst.obs;
    Rx<int> duracao = 200.obs;
    String firstChild = "Olaaaaa";
    String secondChild = "Ihuuuu";

    var leitura_anterior = new DateTime.now();
    int execussoes = 0;
        

  @override
  void onReady() {


    Timer.periodic(Duration(seconds: 2), (Timer t) {

  print('Passou no timer');
  

  funcaoDuracao();

  

  //setState(() {});
});

           
    super.onReady();
  }  

  funcaoDuracaoX(){
    if (teste.value == CrossFadeState.showSecond){
      print("aquiiiiiiiiii");
      teste.value = CrossFadeState.showFirst;
      return true;
    }else{
      print("aquiiiiiiiiii 222222");
      teste.value = CrossFadeState.showSecond;
      return false;
    }
  }



void onClose(){
  super.onClose();
}

void onInit(){


      super.onInit();
}
  

  Future<Null> delay(int milliseconds) {
    print(milliseconds);
  return new Future.delayed(new Duration(milliseconds: milliseconds));
}

  bool funcaoDuracao(){
    if (teste.value == CrossFadeState.showFirst){
      print("edicao 1");
      teste.value = CrossFadeState.showSecond;
    }else{
      print("edicao 2");
      teste.value = CrossFadeState.showFirst;
    }    
    return true;
  }

  Rx<CrossFadeState> retonraFadeState() {

    if (teste.value == CrossFadeState.showFirst)
      teste.value = CrossFadeState.showSecond;

      print("aquiiiii");
    
    teste.value = CrossFadeState.showFirst;

    return teste;
    
  }
}