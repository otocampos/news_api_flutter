import 'package:flutter/material.dart';
import 'package:flutter_projects/constantes/constantes_category.dart';
import 'package:flutter_projects/controllers/news_by_category_controller.dart';
import 'package:flutter_projects/controllers/news_controller.dart';
import 'package:flutter_projects/model/categoria.dart';
import 'package:flutter_projects/pages/tela_news.dart';
import 'package:get/get.dart';

class widgetCategorias extends StatelessWidget {
  const widgetCategorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 120,
                      childAspectRatio: 1),
                  itemCount: NewsCategoryConstants.Categorias.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: ()async {

                       await Get.to(telaNews(),arguments: [NewsCategoryConstants.Categorias[index]]);
                      },
                      child: Center(
                          child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: ColorFiltered(
                              colorFilter: const ColorFilter.mode(
                                Colors.grey,
                                BlendMode.modulate,
                              ),
                              child: Image.asset(
                                  'image/${NewsCategoryConstants.Categorias[index].image}'),
                            ),
                          ),
                          Center(
                              child: Text(
                            NewsCategoryConstants.Categorias[index].name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ))
                        ],
                      )),
                    );
                  }),
            )));
  }
}
