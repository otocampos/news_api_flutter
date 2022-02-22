import 'package:flutter/material.dart';
import 'package:flutter_projects/controllers/news_by_category_controller.dart';
import 'package:flutter_projects/controllers/news_controller.dart';

import 'package:get/get.dart';

import 'lista_de_widgets.dart';

class NewsByCategory extends GetView<NewsByCategoryController> {
  const NewsByCategory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var one = Get.arguments;

   Get.put(NewsByCategoryController());
   controller.changeSlugCategory(categoria:one[0]);
    return Scaffold(
        body: controller.obx((data) => ListaWidgets(data)));
  }
}


