import 'package:flutter/material.dart';
import 'package:my_moment/app/UI/home/android/drawer/list_tile_drawer.dart';

class DrawerPersonal extends StatelessWidget {
  const DrawerPersonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(          
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Container(                
                width: 200,
                height: 200,
                decoration: BoxDecoration(                  
                  boxShadow: <BoxShadow>[BoxShadow(
                    color: Colors.black54,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 0.75)
                  )],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('http://www.macoratti.net/imagens/pessoas/mac.jpg'), // imagem da pessoa
                  ),
                ),
                
              ),              
              ListTileDrawer(
                title: "Teste", 
                icon: Icon(Icons.access_alarms), 
                onTap: _onTap), 

              ListTile(
                  title: Text("EU"),
                  trailing: Icon(Icons.person),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
              ListTile(
                  title: Text("Família"),                  
                  trailing: Icon(Icons.family_restroom),
                  onTap: () {
                    Navigator.pop(context);
                  }),
                  ListTile(
                  title: Text("Álbuns"),                  
                  trailing: Icon(Icons.photo_album),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        );
  }

  _onTap() {
    print("teste");
  }
}


