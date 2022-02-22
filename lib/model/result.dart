import 'package:flutter_projects/model/source.dart';

import 'articles.dart';

class Result {
  String? status;
  int? totalResults;
  List<Articles>? articles;
  List<Source>? sources;

  Result({this.status, this.totalResults, this.articles});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
    if (json['sources'] != null) {
      sources = <Source>[];
      json['sources'].forEach((v) {
        sources!.add(new Source.fromJson(v));
      });
    }


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    if (this.sources != null) {
      data['sources'] = this.sources!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}