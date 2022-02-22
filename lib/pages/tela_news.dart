import 'package:flutter/material.dart';
import 'package:flutter_projects/controllers/news_controller.dart';
import 'package:flutter_projects/model/categoria.dart';
import 'package:flutter_projects/model/source.dart';
import 'package:flutter_projects/widgets/news_by_category_widget.dart';
import 'package:flutter_projects/widgets/widget_headlines.dart';
import 'package:get/get.dart';

class telaNews extends GetView<NewsController> {
   telaNews({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
     var args = Get.arguments;



     return Scaffold(
      appBar: AppBar(
        title: Text(args[0].name),
        leading: BackButton(onPressed: () {
          Get.back();
    }, color: Colors.black),
      ),
      body:  NewsByCategory(),
    );
  }
}
