import 'package:flutter_projects/bindings/data_bindings.dart';
import 'package:flutter_projects/pages/principal.dart';
import 'package:flutter_projects/pages/tela_news.dart';
import 'package:get/get.dart';

class Routes{

  static const String Tela_Principal= "/principal";
  static const String Tela_News= "/news";


  static final routes = [

    GetPage(
      name: Tela_Principal,
      page: () => telaPrincipal(),
      binding: DataBinding()
    ),
    GetPage(
        name: Tela_News,
        page: () => telaNews(),
        binding: DataBinding()
    ),

  ];
}