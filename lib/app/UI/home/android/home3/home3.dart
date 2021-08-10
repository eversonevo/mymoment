 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_moment/app/controller/home_controller.dart';


class HomeView3 extends GetResponsiveView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive Design'),
        ),
        body: Center(
          //child: ResponsiveDesignFirstWay(),
          //child: ResponsiveDesignSecondWay(),
          child: ResponsiveDesignThirdWay(),
        ));
  }
}

class ResponsiveDesignFirstWay extends GetResponsiveView<HomeController> {
  @override
  Widget builder() {
    if (screen.isPhone) {
      return renderWidget(
          iconData: Icons.phone, color: Colors.blue, text: 'Phone');
    } else if (screen.isDesktop) {
      return renderWidget(
          iconData: Icons.desktop_windows, color: Colors.red, text: 'Desktop');
    } else if (screen.isTablet) {
      return renderWidget(
          iconData: Icons.tablet, color: Colors.green, text: 'Tablet');
    } else if (screen.isWatch) {
      return renderWidget(
          iconData: Icons.watch, color: Colors.orange, text: 'Watch');
    }
    return renderWidget(
        iconData: Icons.phone, color: Colors.blue, text: 'Phone');
  }

  renderWidget(
      {required IconData iconData,
      required Color color,
      required String text}) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 100,
          color: color,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }
}

class ResponsiveDesignSecondWay extends GetResponsiveView<HomeController> {
  ResponsiveDesignSecondWay() : super(alwaysUseBuilder: false);

  @override
  Widget phone() =>
      renderWidget(iconData: Icons.phone, color: Colors.blue, text: 'Phone');

  @override
  Widget desktop() => renderWidget(
      iconData: Icons.desktop_windows, color: Colors.red, text: 'Desktop');

  @override
  Widget tablet() =>
      renderWidget(iconData: Icons.tablet, color: Colors.green, text: 'Tablet');

  @override
  Widget watch() =>
      renderWidget(iconData: Icons.watch, color: Colors.orange, text: 'Watch');

  renderWidget(
      {required IconData iconData,
      required Color color,
      required String text}) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 100,
          color: color,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }
}

class ResponsiveDesignThirdWay extends GetResponsiveView<HomeController> {
  ResponsiveDesignThirdWay()
      : super(
            settings: ResponsiveScreenSettings(
          desktopChangePoint: 800,
          tabletChangePoint: 700,
          watchChangePoint: 600,
        ));

  @override
  Widget builder() => Column(
        children: [
          Text('Width>=800 Then Desktop', style: TextStyle(fontSize: 35)),
          SizedBox(
            height: 8,
          ),
          Text('Width>=700 Then Tablet', style: TextStyle(fontSize: 35)),
          SizedBox(
            height: 8,
          ),
          Text('Width<=600 Then Watch', style: TextStyle(fontSize: 35)),
          SizedBox(
            height: 8,
          ),
          Text('Width>600 and Width<700 Then Mobile',
              style: TextStyle(fontSize: 35)),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 8,
          ),
          Text("Screen Type :${screen.screenType.toString()}",
              style: TextStyle(fontSize: 35)),
          SizedBox(
            height: 8,
          ),
          Text("Screen Width :${screen.width.toString()}",
              style: TextStyle(fontSize: 35)),
        ],
      );
}

/*
import 'package:flutter/material.dart';
import 'package:flutter_vscode3/app/UI/home/android/home2/breakpoints.dart';
import 'package:get/get.dart';

class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
            builder: (context, constraints){
              return Scaffold(
          backgroundColor: Colors.black,
          // coloca a AppBar dentro do PreferredSize
          appBar: Get.width < mobileBreakPoint ?
          PreferredSize(
              child: MobileAppBar(),
              preferredSize: Size(double.infinity,56))
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),),  //pode usar o Get
          drawer: constraints.maxWidth < mobileBreakPoint ? Drawer() : null,

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

            });
      
  }
}




class Home3 extends GetResponsiveView {

  Widget? phone() => Text("Phone");
  Widget? tablet() => Text("Tablet");
  Widget? desktop() => Text("Web & Desktop");
  Widget? whatch() => Text("Phone");


}*/