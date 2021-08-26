import 'package:flutter/material.dart';
import 'package:my_moment/app/UI/home/android/drawer/drawer_controller.dart';
import 'package:my_moment/app/UI/home/android/drawer/list_tile_drawer.dart';
import 'package:get/get.dart';

class DrawerPersonal extends StatelessWidget {
  DrawerPersonal({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final _ = Get.put(ControllerDrawer());

    return SizedBox(
      width: Get.size.width * 0.75,
      height: Get.size.height * 0.80,
      child: Drawer(
        elevation: 200.0,
        child: ListView(

          padding: EdgeInsets.all(10),
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75))
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'http://www.macoratti.net/imagens/pessoas/mac.jpg'), // imagem da pessoa
                ),
              ),
            ),
            ListTileDrawer(
                title: "Teste", icon: Icon(Icons.access_alarms), onTap: _.clickTeste),
           
            ListTileDrawer(
                title: "EU", icon: Icon(Icons.person), onTap: _.clickEu),
           
            ListTileDrawer(
                title: "FAMÍLIA", icon: Icon(Icons.family_restroom), onTap: _.clickFamily),

            ListTileDrawer(
                title: "ÁLBUNS", icon: Icon(Icons.photo_album), onTap: _.clickAlbum),

          ],
        ),
      ),
    );

  }



}
