import 'package:flutter/material.dart';
import 'package:flutter_projects/controllers/news_controller.dart';
import 'package:flutter_projects/model/articles.dart';
import 'package:flutter_projects/providers/news_provider.dart';
import 'package:get/get.dart';

import 'lista_de_widgets.dart';

class NewsTopHeadlines extends GetView<NewsController> {
  const NewsTopHeadlines({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NewsController());
    return Scaffold(
        body: controller.obx((data) => ListaWidgets(data)));
  }
}


