import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  late final String title;

  ProductDetailsScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
    );
  }
}
