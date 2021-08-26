import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerAnimated extends StatelessWidget {
  const ContainerAnimated({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = 0.0.obs;
    var width = 100.0.obs;

    return AnimatedContainer(
      duration: Duration(seconds: 5),
      child: Obx(() => Container(
            //height: height.value == 0.0 ? 100 : height.value,
            width: width.value,
            color: Colors.green[500],
          )),
    );
  }

  double testevalue(double i){
    
    
    while (i < 500){
        i = i+10;
    }

    return 10.0;
  }
}
