
import 'dart:convert';

import 'package:flutter_projects/constantes/constantes_category.dart';
import 'package:flutter_projects/model/result.dart';
import 'package:flutter_projects/providers/news_provider.dart';
import 'package:get/get.dart';

class NewsController extends GetxController with StateMixin<dynamic> {
  var newsSlug = NewsCategoryConstants.Categorias[0];
  changeSlugCategory(String slug,String source)=>{
    newsSlug = slug ,
  print(slug),
  update()
  };
  @override
  void onInit() {
    super.onInit();
    Provider().getTopHeadlines(newsSlug).then((value) async{
      print(value);

      var results = Result.fromJson(value);
      print(results);

      change(results, status: RxStatus.success());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();

  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

