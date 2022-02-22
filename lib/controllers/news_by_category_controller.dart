import 'dart:convert';

import 'package:flutter_projects/model/categoria.dart';
import 'package:flutter_projects/model/result.dart';
import 'package:flutter_projects/providers/news_provider.dart';
import 'package:get/get.dart';

class NewsByCategoryController extends GetxController with StateMixin<dynamic> {

var newsSlug;
var newsSource;




  changeSlugCategory({ categoria}) => {
    newsSlug = categoria ,
  };

  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    Provider().getTopHeadlines(newsSlug).then((value) async {
      print(value);

      var results = Result.fromJson(value);
      print(results);

      change(results, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
