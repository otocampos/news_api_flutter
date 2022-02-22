import 'package:flutter/material.dart';
import 'package:flutter_projects/constantes/constantes_category.dart';
import 'package:flutter_projects/pages/single_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ListaWidgets extends StatelessWidget {

  var data;


  ListaWidgets(this.data);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data!.articles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                 Get.to( singleNews(),arguments: [data.articles[index],data.articles]);

              },
              child: Card(
                elevation: 8,
                child: Container(
                  child: Column(children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(data
                                .articles[index].urlToImage ??
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/330px-No-Image-Placeholder.svg.png')),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data.articles[index].title,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                          color: Colors.black45,
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ),
          );
        });
  }

}