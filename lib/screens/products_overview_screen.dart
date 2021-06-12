import 'package:flutter/material.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/widgets/product_item.dart';

class ProdectsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Keyboard',
      description: 'Mechanical',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/05/26/23/52/technology-785742_960_720.jpg',
      isFavourite: false,
    ),
    Product(
      id: 'p1',
      title: 'Laptop',
      description: 'Macbook Air',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378_960_720.jpg',
      isFavourite: false,
    ),
    Product(
      id: 'p1',
      title: 'Ipad',
      description: '2020 64 Gb',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/01/20/13/13/samsung-605439_960_720.jpg',
      isFavourite: false,
    ),
    Product(
      id: 'p1',
      title: 'Monitor',
      description: '27 inch',
      price: 9.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/03/09/09/17/desktop-1245714_960_720.jpg',
      isFavourite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
