import 'package:flutter/material.dart';
import 'package:flutter_projects/controllers/news_controller.dart';
import 'package:flutter_projects/controllers/tab_bar_controller.dart';
import 'package:flutter_projects/widgets/widget_categorias.dart';
import 'package:flutter_projects/widgets/widget_headlines.dart';
import 'package:flutter_projects/widgets/widget_sources.dart';
import 'package:get/get.dart';

class telaPrincipal extends StatelessWidget {
   viewController bottomBarController = Get.put(viewController());

  static const List<Widget> _widgetOptions = <Widget>[
    NewsTopHeadlines(),
    widgetCategorias(),
    Sources(),

  ];

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>NewsController());
    return GetBuilder<viewController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text('G1'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(bottomBarController.selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Recentes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.source),
              label: 'Fontes',
            ),
          ],
          currentIndex: bottomBarController.selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: bottomBarController.changeTabIndex,
        ),
      );
    });
  }
}
