

import 'package:flutter/material.dart';
import 'package:my_moment/app/UI/home/android/drawer/drawer.dart';
import 'package:my_moment/app/UI/home/android/home2/breakpoints.dart';
import 'package:my_moment/app/UI/home/android/home2/widgtes/app_bar/mobile_app_bar.dart';
import 'package:my_moment/app/UI/home/android/home2/widgtes/app_bar/web_app_bar.dart';
import 'package:my_moment/app/UI/home/android/home2/widgtes/sections/advantage_section.dart';
import 'package:my_moment/app/UI/home/android/home2/widgtes/sections/courses_section.dart';
import 'package:my_moment/app/UI/home/android/home2/widgtes/sections/top_section.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // LayoutBuilder  um dos principais widgets para responsividade
    return LayoutBuilder(
      builder: (context, constraints){
        return Scaffold(
          backgroundColor: Colors.black,
          // coloca a AppBar dentro do PreferredSize, se for tela pequena é mobile, senão web
          appBar: constraints.maxWidth < mobileBreakPoint ?
          PreferredSize(
              child: MobileAppBar(),
              preferredSize: Size(double.infinity,56))
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),),  //pode usar o Get
          endDrawer: constraints.maxWidth < mobileBreakPoint ? DrawerPersonal():null,
          
          // para tela maiores para alinhar o body da página, usa align, constrainedBox (constrains) e o widget desejado
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantageSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),

        );
      },
    );
  }
}
