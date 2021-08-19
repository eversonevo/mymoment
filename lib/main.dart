//import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_moment/app/routes/app_pages.dart';
import 'package:my_moment/app/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
          title: 'Teste',
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          initialRoute: Routes.HOME2,
          //initialRoute: Routes.HOME2,  // rota com resposividade  funcionando
          themeMode: ThemeMode.system,
          locale: Locale('pt','BR'),),
  );
}
/*
void main() => runApp(
  DevicePreview(
        builder: (context)=>
        GetMaterialApp(
          title: 'Teste',
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          initialRoute: Routes.INITIAL,
          //initialRoute: Routes.HOME2,  // rota com resposividade  funcionando
          themeMode: ThemeMode.system,
          locale: Locale('pt','BR'),),
        
        enabled: !kReleaseMode,
      ),
);
*/