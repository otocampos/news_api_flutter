import 'package:flutter/material.dart';
import 'package:flutter_projects/controllers/single_news_controller.dart';
import 'package:flutter_projects/widgets/carroussels/horizontal_carroussel_news.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';

class singleNews extends StatelessWidget {
  singleNewsController controller = Get.put(singleNewsController());

  @override
  Widget build(BuildContext context) {
    var one = Get.arguments;
    controller.changeNews(article: one[0], carroussel: one[1]);
    return Scaffold(
        body: single_news_widget(
            one: controller.news, two: controller.carroussel));
  }
}

class single_news_widget extends StatelessWidget {
  const single_news_widget({Key? key, required this.one, required this.two})
      : super(key: key);

  final one;
  final two;

  @override
  Widget build(BuildContext context) {
    final singleNewsController controller = Get.put(singleNewsController());

    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        snap: true,
        floating: true,
        expandedHeight: 160.0,
        flexibleSpace: Stack(
          children: <Widget>[
            Positioned.fill(
                child:
            GetBuilder<singleNewsController>(
            init: singleNewsController(),
        // INIT IT ONLY THE FIRST TIME
        builder: (_) =>  Image.network(
          controller.news.urlToImage!,
          fit: BoxFit.cover,
        ))
               )
          ],
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GetBuilder<singleNewsController>(
                      init: singleNewsController(),
                      // INIT IT ONLY THE FIRST TIME
                      builder: (_) => Text('${controller.news.title}',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 10,
                  ),
                  GetBuilder<singleNewsController>(
                      init: singleNewsController(),
                      // INIT IT ONLY THE FIRST TIME
                      builder: (_) => Text('${controller.news.description}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600))),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    GetBuilder<singleNewsController>(
                        init: singleNewsController(),
                        // INIT IT ONLY THE FIRST TIME
                        builder: (_) =>
                            Text('Por ${controller.news.author} ${controller.news.source!.name}')),
                  ]),
                  GetBuilder<singleNewsController>(
                      init: singleNewsController(),
                      // INIT IT ONLY THE FIRST TIME
                      builder: (_) =>
                          Text(controller.news.publishedAt!),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GetBuilder<singleNewsController>(
                    init: singleNewsController(),
                    // INIT IT ONLY THE FIRST TIME
                    builder: (_) =>
                        Text(controller.news.content!, style: TextStyle(fontSize: 24),textAlign: TextAlign.justify,),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
      horizontal_carroussel_single_news_widget(one: two),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 50,
        ),
      ),
    ]);
  }
}
