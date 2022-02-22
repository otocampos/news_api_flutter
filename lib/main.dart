import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constantes/routes.dart';
import 'pages/principal.dart';

void main() => runApp(NewsApp());

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: Routes.Tela_Principal,
      getPages: Routes.routes,
    );
  }
}
