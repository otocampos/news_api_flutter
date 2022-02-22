import 'package:flutter/material.dart';
import 'package:flutter_projects/controllers/single_news_controller.dart';
import 'package:get/get.dart';

class horizontal_carroussel_single_news_widget extends StatelessWidget {

  const horizontal_carroussel_single_news_widget({
    Key? key,
    required this.one,
  }) : super(key: key);

  final  one;

  @override
  Widget build(BuildContext context) {
    singleNewsController controller = Get.put(singleNewsController());

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150.0,
          width: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: one.length,
            itemBuilder: (context, index) {
              return Container(
                width: 200.0,
                child: InkWell(
                  onTap: (){
                    controller.changeNews(article:one[index],carroussel: one);
                  },
                  child: Card(
                    elevation: 10,
                    child: Stack(fit: StackFit.expand, children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: ColorFiltered(
                              colorFilter: const ColorFilter.mode(
                                Colors.grey,
                                BlendMode.modulate,
                              ),
                              child: Image.network(
                                one[index].urlToImage,
                                fit: BoxFit.cover,
                              ))),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            one[index].title,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        color: Colors.black45,
                      ),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}