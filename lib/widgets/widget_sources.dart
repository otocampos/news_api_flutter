import 'package:flutter/material.dart';
import 'package:flutter_projects/constantes/constantes_category.dart';
import 'package:flutter_projects/controllers/news_controller.dart';
import 'package:flutter_projects/controllers/source_controller.dart';
import 'package:flutter_projects/model/articles.dart';
import 'package:flutter_projects/pages/tela_news.dart';
import 'package:flutter_projects/providers/news_provider.dart';
import 'package:get/get.dart';

class Sources extends GetView<SourceController> {
  const Sources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.obx((data) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                  itemCount: data.sources.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: ()async{
                          await Get.to(telaNews(),arguments: [data.sources[index]]);

                        },
                        child: Card(
                          elevation: 8,
                          child: ListTile(
                            leading: Text((index+1).toString()),
                            title: Text(data.sources[index].name,style: TextStyle(fontSize: 20),),
                            subtitle: Text(data.sources[index].category,style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                    );
                  }),
            )));
  }
}
