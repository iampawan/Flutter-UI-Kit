import 'package:flutter/material.dart';

class Product {
  String name;
  String image;
  double rating;
  String price;
  String brand;
  String description;
  int totalReviews;
  List<String> sizes;
  List<ProductColor> colors;
  int quantity = 0;

  

  Product(
      {this.name,
      this.image,
      this.brand,
      this.price,
      this.rating,
      this.description,
      this.totalReviews,
      this.sizes,
      this.colors,
      this.quantity});

  
}

class ProductColor {
  final String colorName;
  final MaterialColor color;

  ProductColor({this.colorName, this.color});
}
