import 'package:flutter/material.dart';
import 'package:my_moment/app/UI/home/android/home2/widgtes/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox(width: 32,),
          WebAppBarResponsiveContent(),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){},
          ),
          const SizedBox(width: 24,),
          SizedBox(
            height: 38, // só para aumentar a altura do botão
            child: ElevatedButton(
              child: Text('Fazer Login'),
              //textColor: Colors.white,
              //borderSide: BorderSide(color: Colors.white,width: 2),
              onPressed: (){},
            ),
          ),
          const SizedBox(width: 8,),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              child: Text('Cadastre-se'),
              //color: Colors.white,
              //textColor: Colors.black,
              onPressed: (){},
            ),
          ),

        ],
      ),
      centerTitle: true,
    );
  }
}
