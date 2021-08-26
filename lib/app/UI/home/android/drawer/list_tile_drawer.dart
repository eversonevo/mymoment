import 'package:flutter/material.dart';
import 'package:my_moment/app/UI/home/android/drawer/container_animated.dart';

class ListTileDrawer extends StatelessWidget {
  
  ListTileDrawer({
    required this.title,
    required this.icon,
    required this.onTap});

    final String title;
    final Icon icon;
    final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
  padding: EdgeInsets.only(left: 12.0),
  decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
  ),
  height: 50,
  child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: ListTile(
            title: Text(title),
            trailing: icon,
            onTap: onTap,
        ),
  ),
),
      ],
    );
    
    
    
    
    
    
    
    
    /*Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //borderRadius:  BorderRadiusGeometry.lerp(20, 10, 30),
        color: Colors.yellow[100],
        border: Border.all(color: Colors.white),
        ),    
      child: ListTile(
        title: Text(title),
        trailing: icon,
        onTap: onTap,
      ),
    );*/
  }
}
