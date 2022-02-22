import 'package:flutter_projects/controllers/news_by_category_controller.dart';
import 'package:flutter_projects/controllers/news_controller.dart';
import 'package:flutter_projects/controllers/single_news_controller.dart';
import 'package:flutter_projects/controllers/source_controller.dart';
import 'package:get/get.dart';

class DataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NewsByCategoryController());
    Get.lazyPut(() => NewsController());
    Get.lazyPut(() => SourceController());
    Get.lazyPut(() => singleNewsController());

  }

}