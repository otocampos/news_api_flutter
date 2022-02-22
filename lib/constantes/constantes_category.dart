
import 'package:flutter_projects/model/categoria.dart';

class NewsCategoryConstants {

  static  const String API_KEI="9f1c23c070554d07a7ca33ee02890591";


  static final  List Categorias = [
    Categoria(name:'Geral',image: 'geral.jpg',slug: 'general'),
    Categoria(name:'Entretenimento',image: 'entertainment.jpg',slug:'entertainment'),
    Categoria(name:'Saúde',image: 'health.jpg',slug: 'health'),
    Categoria(name:'Ciência',image: 'science.jpg',slug: 'science'),
    Categoria(name:'Esporte',image: 'sports.jpg',slug: 'sports'),
    Categoria(name:'Tecnologia',image:'technology.jpg',slug:'technology'  ),
    Categoria(name:'Business',image:'businness.jpg',slug:'business' ),

  ];
}
